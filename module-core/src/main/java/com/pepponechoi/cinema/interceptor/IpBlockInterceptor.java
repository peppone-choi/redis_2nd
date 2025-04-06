package com.pepponechoi.cinema.interceptor;

import com.pepponechoi.cinema.block.service.BlockService;
import com.pepponechoi.cinema.blockIps.entity.Block;
import com.pepponechoi.cinema.exception.enums.ForbiddenErrorCode;
import com.pepponechoi.cinema.exception.exception.ForbiddenException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
@RequiredArgsConstructor
@Slf4j
public class IpBlockInterceptor implements HandlerInterceptor {
    private final BlockService blockService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
        Object handler) throws Exception {
        String ip = getIpAddress(request);

        Block block = blockService.getBlock(ip);

        if (block != null) {
            ForbiddenException forbiddenException = new ForbiddenException();
            forbiddenException.setErrorCode(ForbiddenErrorCode.BANNED_IP);
            forbiddenException.setDetail("해제 일시 " + block.getExpireTime());
            throw forbiddenException;
        }
        return true;
    }

    private String getIpAddress(HttpServletRequest request) {
        String xfHeader = request.getHeader("x-forwarded-for");
        if (xfHeader == null || xfHeader.isEmpty() || "unknown".equalsIgnoreCase(xfHeader)) {
            return request.getRemoteAddr();
        }
        return xfHeader.split(",")[0];
    }
}
