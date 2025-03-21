package com.pepponechoi.cinema.reservation.dto.response;

import com.pepponechoi.cinema.reservation.entity.Reservation;
import com.pepponechoi.cinema.schedule.entity.Schedule;
import com.pepponechoi.cinema.seat.entity.Seat;
import java.time.LocalDateTime;

public record ReservationResponse(
    Long id,
    NestedScheduleResponse schedule,
    NestedSeatResponse seat
) {

    public static ReservationResponse of(Reservation reservation) {
        return new ReservationResponse(
            reservation.getId(),
            NestedScheduleResponse.of(reservation.getSchedule()),
            NestedSeatResponse.of(reservation.getSeat())
        );
    }

    public record NestedScheduleResponse(
        Long id,
        String movieTitle,
        LocalDateTime start,
        LocalDateTime end
    ) {
        public static NestedScheduleResponse of(Schedule schedule) {
            return new NestedScheduleResponse(
                schedule.getId(),
                schedule.getMovie().getTitle(),
                schedule.getStart(),
                schedule.getEnd()
            );
        }
    }

    private record NestedSeatResponse(
        Long id,
        Character row,
        Integer column
    ) {
        public static NestedSeatResponse of(Seat seat) {
            return new NestedSeatResponse(
                seat.getId(),
                seat.getRowNo(),
                seat.getColumnNo()
            );
        }
    }
}
