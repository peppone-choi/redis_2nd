package com.pepponechoi.cinema.reservation.repository;

import com.pepponechoi.cinema.reservation.entity.Reservation;
import jakarta.persistence.LockModeType;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.Lock;

public interface ReservationRepository {
    Reservation save(Reservation reservation);

    @Lock(LockModeType.PESSIMISTIC_WRITE)
    Optional<Reservation> findById(Long id);
    List<Reservation> findAll();
    void deleteByIdIn(Collection<Long> ids);

    void deleteAll();
}
