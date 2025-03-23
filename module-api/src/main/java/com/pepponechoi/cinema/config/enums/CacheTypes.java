package com.pepponechoi.cinema.config.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum CacheTypes {
    SCREENING_CACHE("screeningCache", 12, 10000);
    private final String cacheName;
    private final Integer expiredAfterWrite;
    private final Integer maximumSize;
}
