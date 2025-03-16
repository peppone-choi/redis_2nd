package com.pepponechoi.cinema.movie.dto.response;

import com.pepponechoi.cinema.movie.entity.Movie;
import com.pepponechoi.cinema.schedule.entity.Schedule;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.stream.Collectors;
import lombok.Data;

@Data
public class MovieResponse {
    private Long id;
    private String title;
    private String rating;
    private String ratingCode;
    private LocalDate releaseDate;
    private String genre;
    private String genreCode;
    private String thumbnail;
    private Integer runningTime;
    private Set<NestedScheduleResponse> schedule = new LinkedHashSet<>();

    public MovieResponse(Movie movie) {
        this.id = movie.getId();
        this.title = movie.getTitle();
        this.rating = movie.getRating().getValue();
        this.ratingCode = movie.getRating().getCode();
        this.releaseDate = movie.getReleaseDate();
        this.genre = movie.getGenre().getValue();
        this.genreCode = movie.getGenre().toString();
        this.thumbnail = movie.getThumbnail();
        this.runningTime = movie.getRunningTime();
        this.schedule =
            movie.getSchedules().stream()
                .sorted(Comparator.comparing(Schedule::getStart))
                .map(NestedScheduleResponse::new)
                .collect(Collectors.toCollection(LinkedHashSet::new));
    }

    @Data
    private static class NestedScheduleResponse {
        private Long id;
        private Long screenId;
        private String screenName;
        private LocalDateTime start;
        private LocalDateTime end;

        private NestedScheduleResponse(Schedule schedule) {
            this.id = schedule.getId();
            this.screenId = schedule.getScreen().getId();
            this.screenName = schedule.getScreen().getName();
            this.start = schedule.getStart();
            this.end = schedule.getEnd();
        }
    }
}
