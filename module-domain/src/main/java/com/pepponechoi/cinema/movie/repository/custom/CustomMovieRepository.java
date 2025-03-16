package com.pepponechoi.cinema.movie.repository.custom;

import com.pepponechoi.cinema.movie.entity.Movie;
import java.util.List;

public interface CustomMovieRepository {
    List<Movie> findAndFetchSchedule();
}
