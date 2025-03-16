package com.pepponechoi.cinema.movie.repository;

import com.pepponechoi.cinema.movie.entity.Movie;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

public interface MovieRepository {
    Movie save(Movie movie);

    Optional<Movie> findById(Long id);
    List<Movie> findAll();

    void deleteByIdIn(Collection<Long> ids);
}
