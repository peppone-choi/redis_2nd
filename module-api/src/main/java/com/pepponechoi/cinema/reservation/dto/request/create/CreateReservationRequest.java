package com.pepponechoi.cinema.reservation.dto.request.create;

public record CreateReservationRequest(
        Long userId,
        Character seatRowNo,
        Integer columNo,
        Long scheduleId
) {
}
