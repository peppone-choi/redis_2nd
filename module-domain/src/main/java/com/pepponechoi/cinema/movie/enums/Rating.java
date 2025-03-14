package com.pepponechoi.cinema.movie.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum Rating {
    R_ALL("전체상영가", 0),
    R_12("12세 이상 관람가", 10),
    R_15("15세 이상 관람가", 20),
    R_19("청소년 관람불가", 30),
    R_LIMITED("제한상영가", 99);
    private final String value;
    private final int ordinal;
}
