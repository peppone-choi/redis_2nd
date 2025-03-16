package com.pepponechoi.cinema.movie.entity;


import com.pepponechoi.cinema.entity.BaseEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.LocalDate;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import com.pepponechoi.cinema.movie.enums.Genre;
import com.pepponechoi.cinema.movie.enums.Rating;

@Entity
@Table(name = "movies")
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
public class Movie extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movie_id")
    private long id;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private Rating rating;

    @Column(nullable = false)
    private LocalDate releaseDate;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private Genre genre;

    @Column(columnDefinition = "TEXT")
    private String thumbnail;

    @Column(nullable = false)
    private Integer runningTime;

    protected Movie(String title, Rating rating, LocalDate releaseDate, Genre genre,
        String thumbnail, Integer runningTime, String createdBy) {
        this.title = title;
        this.rating = rating;
        this.releaseDate = releaseDate;
        this.genre = genre;
        this.thumbnail = thumbnail;
        this.runningTime = runningTime;
        this.setCreatedBy(createdBy);
    }

    public static Movie of(String title, Rating rating, LocalDate releaseDate, Genre genre,
        String thumbnail, Integer runningTime, String createdBy) {
        return new Movie(title, rating, releaseDate, genre, thumbnail, runningTime, createdBy);
    }
}
