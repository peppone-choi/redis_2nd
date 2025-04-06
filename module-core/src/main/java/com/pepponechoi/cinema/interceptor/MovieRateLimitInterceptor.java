package com.pepponechoi.cinema.interceptor;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.google.common.util.concurrent.RateLimiter;
import com.pepponechoi.cinema.block.service.BlockService;
import com.pepponechoi.cinema.exception.enums.ForbiddenErrorCode;
import com.pepponechoi.cinema.exception.exception.ForbiddenException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
@RequiredArgsConstructor
@Slf4j
public class MovieRateLimitInterceptor implements HandlerInterceptor {
    private final BlockService blockService;

    // IP별 요청 카운트를 추적하기 위한 캐시
    private final Cache<String, AtomicInteger> requestCountCache = CacheBuilder.newBuilder()
        .expireAfterWrite(1, TimeUnit.MINUTES)
        .build();;

    // IP별 RateLimiter 관리
    private final Cache<String, RateLimiter> rateLimiterCache = CacheBuilder.newBuilder()
        .expireAfterAccess(10, TimeUnit.MINUTES)
        .build();

    // 설정값
    private static final int MAX_REQUESTS_PER_MINUTE = 50;
    private static final double RATE_LIMIT = MAX_REQUESTS_PER_MINUTE / 60.0; // 초당 처리량

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
        Object handler) throws Exception {
        String ipAddress = getIpAddress(request);
        int requestCount = incrementRequestCount(ipAddress);

        if (requestCount > MAX_REQUESTS_PER_MINUTE) {
            LocalDateTime blockExpires = LocalDateTime.now().plusHours(1);
            blockService.block(ipAddress, blockExpires);
            ForbiddenException exception = new ForbiddenException();
            exception.setErrorCode(ForbiddenErrorCode.BANNED_IP);
            exception.setDetail("해제 일시 " + blockExpires);
            throw exception;
        }

        RateLimiter limiter = getRateLimiter(ipAddress);

        if (!limiter.tryAcquire()) {
            response.sendError(HttpStatus.TOO_MANY_REQUESTS.value());
            return false;
        }
        return true;
    }

    private int incrementRequestCount(String ipAddress) {
        try {
            AtomicInteger counter = requestCountCache.get(ipAddress, () -> new AtomicInteger(0));
            return counter.incrementAndGet();
        } catch (ExecutionException e) {
            return 1;
        }
    }

    private RateLimiter getRateLimiter(String ipAddress) {
        try {
            return rateLimiterCache.get(ipAddress, () -> RateLimiter.create(RATE_LIMIT));
        } catch (Exception e) {
            return RateLimiter.create(RATE_LIMIT);
        }
    }

    private String getIpAddress(HttpServletRequest request) {
        String xfHeader = request.getHeader("x-forwarded-for");
        if (xfHeader == null || xfHeader.isEmpty() || "unknown".equalsIgnoreCase(xfHeader)) {
            return request.getRemoteAddr();
        }
        return xfHeader.split(",")[0];
    }
}
