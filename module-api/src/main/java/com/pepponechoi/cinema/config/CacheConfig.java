package com.pepponechoi.cinema.config;

import com.github.benmanes.caffeine.cache.Caffeine;
import com.pepponechoi.cinema.config.enums.CacheTypes;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.caffeine.CaffeineCache;
import org.springframework.cache.support.SimpleCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableCaching
public class CacheConfig {

    @Bean
    public List<CaffeineCache> caffeineCaches() {
        return Arrays.stream(CacheTypes.values())
            .map(cache -> new CaffeineCache(
                cache.getCacheName(), Caffeine.newBuilder().recordStats()
                .expireAfterWrite(cache.getExpiredAfterWrite(), TimeUnit.HOURS)
                .maximumSize(cache.getMaximumSize())
                .build()))
            .toList();
    }

    @Bean
    public CacheManager cacheManager(List<CaffeineCache> caches) {
        SimpleCacheManager cacheManager = new SimpleCacheManager();
        cacheManager.setCaches(caches);

        return cacheManager;
    }
}
