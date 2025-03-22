package com.pepponechoi.cinema.movie.repository.querydsl;

import com.pepponechoi.cinema.movie.entity.Movie;
import com.pepponechoi.cinema.movie.enums.Genre;
import java.util.List;

public interface MovieQueryDslRepository {
    List<Movie> findAllWithSchedule();
    List<Movie> findByTitleAndGenre(String title, Genre genre);
}
