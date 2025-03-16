package com.pepponechoi.cinema.movie.repository.custom;

import com.pepponechoi.cinema.movie.entity.Movie;
import com.pepponechoi.cinema.schedule.entity.Schedule;
import jakarta.persistence.EntityManager;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.transaction.annotation.Transactional;

@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CustomMovieRepositoryImpl implements CustomMovieRepository{

    private final EntityManager em;

    @Override
    public List<Movie> findAndFetchSchedule() {
        String jpqlMovie = "SELECT DISTINCT m FROM Movie m ORDER BY m.releaseDate DESC";
        List<Movie> movies = em.createQuery(jpqlMovie, Movie.class).getResultList();

        List<Long> ids = movies.stream().map(Movie::getId).toList();

        String jpqlSchedule = "SELECT s FROM Schedule s WHERE s.movie.id IN :movieIds ORDER BY s"
            + ".movie.id, s.start ASC";

        List<Schedule> schedules = em.createQuery(jpqlSchedule, Schedule.class)
            .setParameter("movieIds", ids)
            .getResultList();

        Map<Long, List<Schedule>> scheduleMap =
            schedules.stream().collect(Collectors.groupingBy(
                schedule -> schedule.getMovie().getId()
            ));

        schedules.forEach(Schedule::link);

        return movies;
    }
}
