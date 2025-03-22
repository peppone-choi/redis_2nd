package com.pepponechoi.cinema.movie.repository.querydsl;

import static com.pepponechoi.cinema.movie.entity.QMovie.movie;
import static com.pepponechoi.cinema.schedule.entity.QSchedule.schedule;
import static com.pepponechoi.cinema.screen.entity.QScreen.screen;

import com.pepponechoi.cinema.movie.dto.FindMovies;
import com.pepponechoi.cinema.movie.entity.Movie;
import com.pepponechoi.cinema.movie.enums.Genre;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.jpa.impl.JPAQueryFactory;
import java.util.List;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class MovieQueryDslRepositoryImpl implements MovieQueryDslRepository {

    private final JPAQueryFactory queryFactory;
    @Override
    public List<Movie> findAllWithSchedule(FindMovies findMovies) {
        BooleanBuilder whereClause = new BooleanBuilder();

        String title = findMovies.title();

        if (title != null && !title.trim().isEmpty()) {
            title = title.trim().toLowerCase();
            whereClause.and(movie.title.trim().toLowerCase().like(title));
        }

        String genre = findMovies.genre();

        if (genre != null) {
            whereClause.and(movie.genre.eq(Genre.valueOf(genre)));
        }

//        LocalDateTime now = LocalDateTime.now();
//
//        whereClause.and(qSchedule.start.after(now)).and(qSchedule.end.before(now));

        return queryFactory
            .selectFrom(movie)
            .where(whereClause)
            .join(schedule)
            .on(movie.id.eq(schedule.id))
            .orderBy(schedule.start.asc())
            .fetchJoin()
            .join(screen).on(movie.id.eq(screen.id)).fetchJoin()
            .orderBy(movie.releaseDate.desc())
            .fetch();
    }
}
