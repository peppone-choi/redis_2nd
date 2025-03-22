package com.pepponechoi.cinema.movie.repository.querydsl;

import com.pepponechoi.cinema.movie.dto.FindMovies;
import com.pepponechoi.cinema.movie.entity.Movie;
import com.pepponechoi.cinema.movie.entity.QMovie;
import com.pepponechoi.cinema.movie.enums.Genre;
import com.pepponechoi.cinema.schedule.entity.QSchedule;
import com.pepponechoi.cinema.screen.entity.QScreen;
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
        QMovie qMovie = new QMovie("movie");
        QSchedule qSchedule = new QSchedule("schedule");
        QScreen qScreen = new QScreen("screen");
        BooleanBuilder whereClause = new BooleanBuilder();

        String title = findMovies.title();

        if (title != null && !title.trim().isEmpty()) {
            title = title.trim().toLowerCase();
            whereClause.or(qMovie.title.trim().toLowerCase().like(title));
        }

        Genre genre = Genre.valueOf(findMovies.genre());

        if (genre != null) {
            whereClause.or(qMovie.genre.eq(genre));
        }

        LocalDateTime now = LocalDateTime.now();

        whereClause.and(qSchedule.start.after(now)).and(qSchedule.end.before(now));

        return queryFactory
            .selectFrom(qMovie)
            .where(whereClause)
            .join(qSchedule)
            .on(qMovie.id.eq(qSchedule.id))
            .orderBy(qSchedule.start.asc())
            .fetchJoin()
            .join(qScreen).on(qMovie.id.eq(qScreen.id)).fetchJoin()
            .orderBy(qMovie.releaseDate.desc())
            .fetch();
    }
}
