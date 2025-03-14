package movie.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum Genre {
    ACTION("액션"),
    ROMANCE("로맨스"),
    HORROR("호러"),
    SF("SF");
    private final String value;
}
