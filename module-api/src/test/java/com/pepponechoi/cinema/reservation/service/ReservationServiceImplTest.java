package com.pepponechoi.cinema.reservation.service;

import static org.assertj.core.api.Assertions.assertThat;

import com.pepponechoi.cinema.reservation.entity.Reservation;
import com.pepponechoi.cinema.schedule.entity.Schedule;
import com.pepponechoi.cinema.screen.entity.Screen;
import com.pepponechoi.cinema.seat.entity.Seat;
import com.pepponechoi.cinema.user.entity.User;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
public class ReservationServiceImplTest {
    @Test
    @DisplayName("락 없이 동시에 여러 스레드가 같은 좌석 예약 시도시 경쟁 상태 발생, 락이 있을땐 경쟁상태 발생 하지 않아야 함.")
    public void withoutLock_ConcurrentReservation_RaceCondition() throws InterruptedException {
        // given
        final int THREAD_COUNT = 10;
        ExecutorService executorService = Executors.newFixedThreadPool(THREAD_COUNT);
        CountDownLatch latch = new CountDownLatch(THREAD_COUNT);
        AtomicInteger successCount = new AtomicInteger(0);

        User user1 = User.of("test1@test1.com", "test1", "test1");
        User user2 = User.of("test2@test2.com", "test2", "test2");

        // 테스트용 스크린 객체
        Screen screen = Screen.of(1L, "1관", "pepponechoi");

        Schedule schedule = Schedule.of(screen, null, LocalDateTime.now(),
            LocalDateTime.now().plusMinutes(90), "pepponechoi");

        // 테스트용 좌석 객체
        Seat seat = Seat.of('A', 1, screen, "pepponechoi");

        // 예약 성공 여부를 추적하기 위한 리스트
        List<Boolean> results = new ArrayList<>();

        // when: 10개 스레드가 동시에 같은 좌석 예약 시도
        for (int i = 0; i < THREAD_COUNT; i++) {
            int finalI = i;
            executorService.submit(() -> {
                boolean reserved;
                try {
                    if (finalI % 2 == 0) {
                        // 동시성 문제 재현을 위한 딜레이 추가
                        reserved = reserveSeatWithoutLock(seat, user1, schedule);
                    } else {
                        reserved = reserveSeatWithoutLock(seat, user2, schedule);
                    }

                    if (reserved) {
                        successCount.incrementAndGet();
                    }
                    synchronized (results) {
                        results.add(reserved);
                    }
                } finally {
                    latch.countDown();
                }
            });
        }

        latch.await(); // 모든 스레드 완료 대기
        executorService.shutdown();

        // 락이 없을 때 이 테스트가 실패하여야 함.
        // 락이 있을때는 성공 하여야 함.
        assertThat(successCount.get()).isLessThanOrEqualTo(1);
    }

    /**
     * 락 없이 좌석 예약 시도 (동시성 문제 발생)
     */
    private boolean reserveSeatWithoutLock(Seat seat, User user, Schedule schedule) {
        // 이미 예약되었는지 확인
        if (seat.getReservation() != null) {
            return false; // 이미 예약됨
        }

        try {
            // 실제 환경에서 발생할 수 있는 지연 시뮬레이션
            Thread.sleep(10);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }

        // 예약 처리
        Reservation reservation = Reservation.of(user, List.of(seat), schedule, "pepponechoi");
        seat.setReservation(reservation);

        return true;
    }
}
