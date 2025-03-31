package com.pepponechoi.cinema.reservation.service;

import com.pepponechoi.cinema.reservation.dto.request.create.CreateReservationRequest;
import com.pepponechoi.cinema.reservation.dto.request.create.CreateReservationRequest.NestedSeat;
import com.pepponechoi.cinema.reservation.entity.Reservation;
import com.pepponechoi.cinema.reservation.repository.ReservationRepository;
import com.pepponechoi.cinema.schedule.entity.Schedule;
import com.pepponechoi.cinema.schedule.repository.ScheduleRepository;
import com.pepponechoi.cinema.screen.entity.Screen;
import com.pepponechoi.cinema.screen.repository.ScreenRepository;
import com.pepponechoi.cinema.seat.entity.Seat;
import com.pepponechoi.cinema.seat.repository.SeatRepository;
import com.pepponechoi.cinema.user.entity.User;
import com.pepponechoi.cinema.user.repository.UserRepository;
import java.time.LocalDateTime;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@SpringBootTest(classes = com.pepponechoi.cinema.reservation.service.ApiTestConfig.class)
@ActiveProfiles("test")
public class ReservationServiceImplTest {
    @Autowired
    private ReservationService reservationService;

    @Autowired
    private ReservationRepository reservationRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ScreenRepository screenRepository;

    @Autowired
    private ScheduleRepository scheduleRepository;

    @Autowired
    private SeatRepository seatRepository;

    @Autowired
    private PlatformTransactionManager transactionManager;

    @Test
    @DisplayName("락이 없을 때 동시에 여러 스레드가 같은 좌석을 예약하면 동시성 문제 발생")
    public void concurrentReservationWithoutLock() throws InterruptedException {
        // given: 초기 데이터 설정
        // 트랜잭션 시작
        TransactionDefinition def = new DefaultTransactionDefinition();
        TransactionStatus status = transactionManager.getTransaction(def);

        try {
            // 테스트용 데이터 초기화
            reservationRepository.deleteAll();

            // 사용자 생성
            User user1 = User.of("test1@test.com", "test1", "test1");
            User user2 = User.of("test2@test.com", "test2", "test2");
            userRepository.save(user1);
            userRepository.save(user2);

            // 스크린 생성
            Screen screen = Screen.of(1L, "1관", "pepponechoi");
            screenRepository.save(screen);

            // 상영 일정 생성
            Schedule schedule = Schedule.of(screen, null, LocalDateTime.now(),
                LocalDateTime.now().plusMinutes(90), "pepponechoi");
            scheduleRepository.save(schedule);

            // 좌석 생성
            Seat seatA1 = Seat.of('A', 1, screen, "pepponechoi");
            seatRepository.save(seatA1);

            // 트랜잭션 커밋 (초기 데이터 저장)
            transactionManager.commit(status);

            // 테스트에 필요한 변수들
            final Long userId1 = user1.getId();
            final Long userId2 = user2.getId();
            final Long scheduleId = schedule.getId();
            final int THREAD_COUNT = 5;

            // 성공/실패 카운터
            AtomicInteger successCount = new AtomicInteger(0);
            AtomicInteger errorCount = new AtomicInteger(0);

            // 스레드 풀 및 동기화 객체
            ExecutorService executorService = Executors.newFixedThreadPool(THREAD_COUNT);
            CountDownLatch latch = new CountDownLatch(THREAD_COUNT);

            // when: 여러 스레드에서 동시에 같은 좌석 예약 시도
            for (int i = 0; i < THREAD_COUNT; i++) {
                final long userId = (i % 2 == 0) ? userId1 : userId2;

                executorService.submit(() -> {
                    try {
                        // 각 스레드에서 새 트랜잭션 시작
                        TransactionStatus threadStatus = transactionManager.getTransaction(
                            new DefaultTransactionDefinition());

                        try {
                            CreateReservationRequest request = new CreateReservationRequest(
                                userId, List.of(new NestedSeat('A', 1)), scheduleId
                            );

                            // 예약 시도
                            reservationService.create(request);

                            // 성공시 커밋
                            transactionManager.commit(threadStatus);
                            successCount.incrementAndGet();
                            System.out.println("예약 성공: 사용자 " + userId);

                        } catch (Exception e) {
                            // 실패시 롤백
                            transactionManager.rollback(threadStatus);
                            errorCount.incrementAndGet();
                            System.out.println("예약 실패: 사용자 " + userId + ", 이유: " + e.getMessage());
                        }
                    } finally {
                        latch.countDown();
                    }
                });
            }

            // 모든 스레드 완료 대기
            latch.await();
            executorService.shutdown();

            // then: 결과 확인
            System.out.println("=== 테스트 결과 ===");
            System.out.println("성공한 예약 수: " + successCount.get());
            System.out.println("실패한 예약 수: " + errorCount.get());

            // 실제 DB에 저장된 예약 확인 (새 트랜잭션에서)
            TransactionStatus checkStatus = transactionManager.getTransaction(
                new DefaultTransactionDefinition());

            List<Reservation> reservations = reservationRepository.findAll();
            System.out.println("DB에 저장된 예약 수: " + reservations.size());

            // A1 좌석이 예약된 횟수 확인
            long seatA1ReservationCount = seatRepository.findAll().stream()
                .filter(s -> s.getRowNo() == 'A' && s.getColumnNo() == 1 && s.getReservation() != null)
                .count();

            System.out.println("A1 좌석 예약 횟수: " + seatA1ReservationCount);

            // 트랜잭션 커밋
            transactionManager.commit(checkStatus);

        } catch (Exception e) {
            transactionManager.rollback(status);
            throw e;
        }
    }
}
