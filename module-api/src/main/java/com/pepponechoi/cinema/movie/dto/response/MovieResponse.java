package com.pepponechoi.cinema.movie.dto.response;

import com.pepponechoi.cinema.movie.entity.Movie;
import java.time.LocalDate;
import lombok.Data;

@Data
public class MovieResponse {
    private Long id;
    private String title;
    private String rating;
    private LocalDate releaseDate;
    private String genre;
    private String thumbnail;
    private Integer runningTime;

    public MovieResponse(Movie movie) {
        this.id = movie.getId();
        this.title = movie.getTitle();
        this.rating = movie.getRating().getValue();
        this.releaseDate = movie.getReleaseDate();
        this.genre = movie.getGenre().getValue();
        this.thumbnail = movie.getThumbnail();
        this.runningTime = movie.getRunningTime();
    }
}
