package com.pepponechoi.cinema.reservation.entity;


import com.pepponechoi.cinema.BaseEntity;
import com.pepponechoi.cinema.user.entity.User;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import com.pepponechoi.cinema.schedule.entity.Schedule;
import com.pepponechoi.cinema.seat.entity.Seat;

@Entity
@Table(name = "reservations")
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
public class Reservation extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "seat_id")
    private Seat seat;

    @ManyToOne
    @JoinColumn(name = "schedule_id")
    private Schedule schedule;

    protected Reservation(User user, Seat seat, Schedule schedule, String createdBy) {
        this.user = user;
        this.seat = seat;
        this.schedule = schedule;
        this.setCreatedBy(createdBy);
    }

    public static Reservation of(User user, Seat seat, Schedule schedule, String createdBy) {
        return new Reservation(user, seat, schedule, createdBy);
    }
}
