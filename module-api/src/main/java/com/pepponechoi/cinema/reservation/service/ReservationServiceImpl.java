package com.pepponechoi.cinema.reservation.service;

import com.pepponechoi.cinema.exception.enums.ConfliectErrorCode;
import com.pepponechoi.cinema.exception.enums.NotFoundErrorCode;
import com.pepponechoi.cinema.exception.exception.ConflictException;
import com.pepponechoi.cinema.exception.exception.NotFoundException;
import com.pepponechoi.cinema.reservation.dto.request.create.CreateReservationRequest;
import com.pepponechoi.cinema.reservation.dto.response.ReservationResponse;
import com.pepponechoi.cinema.reservation.entity.Reservation;
import com.pepponechoi.cinema.reservation.repository.ReservationRepository;
import com.pepponechoi.cinema.schedule.entity.Schedule;
import com.pepponechoi.cinema.schedule.repository.ScheduleRepository;
import com.pepponechoi.cinema.seat.entity.Seat;
import com.pepponechoi.cinema.seat.repository.SeatRepository;
import com.pepponechoi.cinema.user.entity.User;
import com.pepponechoi.cinema.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class ReservationServiceImpl implements ReservationService {
    private final ReservationRepository reservationRepository;
    private final UserRepository userRepository;
    private final SeatRepository seatRepository;
    private final ScheduleRepository scheduleRepository;

    @Override
    @Transactional
    public ReservationResponse create(CreateReservationRequest request) {
        User user = userRepository.findById(request.userId()).orElseThrow(
                () -> {
                    NotFoundException exception = new NotFoundException();
                    exception.setErrorCode(NotFoundErrorCode.RESOURCE_NOT_FOUND);
                    exception.setDetail("해당하는 유저를 찾을 수 없습니다.");
                    return exception;
                }
        );

        Schedule schedule = scheduleRepository.findById(request.scheduleId()).orElseThrow(
                () -> {
                    NotFoundException exception = new NotFoundException();
                    exception.setErrorCode(NotFoundErrorCode.RESOURCE_NOT_FOUND);
                    exception.setDetail("해당하는 상영 스케쥴을 찾을 수 없습니다.");
                    return exception;
                }
        );

        Seat seat = seatRepository.findByRowNoAndColumnNoAndIsReservedIsFalse(
                request.seatRowNo(),
                request.columNo()
        ).orElseThrow(
                () -> {
                    ConflictException exception = new ConflictException();
                    exception.setErrorCode(ConfliectErrorCode.CONFLICT);
                    exception.setDetail("이미 예약된 좌석이거나 좌석이 존재하지 않습니다.");
                    return exception;
                }
        );

        Reservation reservation = Reservation.of(user, seat, schedule, String.valueOf(user.getId()));

        reservationRepository.save(reservation);

        return ReservationResponse.of(reservation);
    }
}
