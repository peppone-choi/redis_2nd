package com.pepponechoi.cinema.movie.service;

import com.pepponechoi.cinema.movie.dto.request.FindAllRequest;
import com.pepponechoi.cinema.movie.dto.response.MovieResponse;
import com.pepponechoi.cinema.movie.entity.Movie;
import com.pepponechoi.cinema.movie.repository.MovieRepository;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class MovieServiceImpl implements MovieService {

    private final MovieRepository movieRepository;

    @Override
    public List<MovieResponse> findAllMoviesIsShowing(FindAllRequest request) {
        List<Movie> movies = movieRepository.findAllWithSchedule(request.toFinds());
        System.out.println(movies);
        return movies.stream().map(MovieResponse::of).toList();
    }
}

