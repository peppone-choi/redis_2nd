package com.pepponechoi.cinema.seat.repository;

import com.pepponechoi.cinema.seat.entity.Seat;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

public interface SeatRepository {
    Seat save(Seat seat);

    Optional<Seat> findByScreenIdAndRowNoAndColumnNo(Long screenId, Character rowNo, Integer columnNo);

    Optional<Seat> findByScreenIdAndRowNoAndColumnNoAndIsReservedIsFalse(Long screenId, Character rowNo, Integer columnNo);

    Optional<Seat> findById(Long id);
    List<Seat> findAll();

    void deleteByIdIn(Collection<Long> ids);
}
