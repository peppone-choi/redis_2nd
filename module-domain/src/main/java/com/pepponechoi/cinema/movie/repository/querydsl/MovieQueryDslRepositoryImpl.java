package com.pepponechoi.cinema.movie.repository.querydsl;

import static com.pepponechoi.cinema.movie.entity.QMovie.movie;
import static com.pepponechoi.cinema.schedule.entity.QSchedule.schedule;
import static com.pepponechoi.cinema.screen.entity.QScreen.screen;

import com.pepponechoi.cinema.movie.dto.FindMovies;
import com.pepponechoi.cinema.movie.entity.Movie;
import com.pepponechoi.cinema.movie.enums.Genre;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.jpa.impl.JPAQueryFactory;
import java.time.LocalDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class MovieQueryDslRepositoryImpl implements MovieQueryDslRepository {

    private final JPAQueryFactory queryFactory;
    @Override
    public List<Movie> findAllWithSchedule(FindMovies findMovies) {
        BooleanBuilder whereClause = new BooleanBuilder();

        LocalDateTime now = LocalDateTime.now();

        String title = findMovies.title();

        if (title != null && !title.trim().isEmpty()) {
            title = "%" + title.trim().toLowerCase() + "%";
            whereClause.and(movie.title.trim().toLowerCase().like(title));
        }

        String genre = findMovies.genre();

        if (genre != null) {
            whereClause.and(movie.genre.eq(Genre.valueOf(genre)));
        }


        return queryFactory
            .selectFrom(movie)
            .where(whereClause)
            .join(movie.schedules, schedule)
            .where(schedule.start.after(now)).fetchJoin()
            .join(schedule.screen, screen).fetchJoin()
            .orderBy(
                schedule.start.asc(),
                movie.releaseDate.desc()
            ).fetch();
    }
}
