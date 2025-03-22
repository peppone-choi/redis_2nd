package com.pepponechoi.cinema.movie.repository.querydsl;

import com.pepponechoi.cinema.movie.entity.Movie;
import com.pepponechoi.cinema.movie.entity.QMovie;
import com.pepponechoi.cinema.movie.enums.Genre;
import com.querydsl.jpa.impl.JPAQueryFactory;
import java.util.List;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class MovieQueryDslRepositoryImpl implements MovieQueryDslRepository {

    private final JPAQueryFactory queryFactory;
    @Override
    public List<Movie> findAllWithSchedule() {
        QMovie qMovie = QMovie.movie;

        queryFactory.selectFrom(qMovie);
        return List.of();
    }

    @Override
    public List<Movie> findByTitleAndGenre(String title, Genre genre) {
        return List.of();
    }
}
