package com.pepponechoi.cinema.seat.dto.response;
import com.pepponechoi.cinema.screen.entity.Screen;
import com.pepponechoi.cinema.seat.entity.Seat;

public record SeatResponse(
    Long id,
    Character row,
    Integer column,
    NestedScreenResponse screen
) {
    public static SeatResponse of(final Seat seat) {
        return new SeatResponse(seat.getId(), seat.getRowNo(), seat.getColumnNo(), NestedScreenResponse.of(seat.getScreen()));
    }

    private record NestedScreenResponse(
        Long id,
        String name
    ) {
        public static NestedScreenResponse of(Screen screen) {
            return new NestedScreenResponse(screen.getId(), screen.getName());
        }
    }
}

