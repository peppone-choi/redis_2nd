package com.pepponechoi.cinema.block.service;

import java.time.LocalDateTime;

public interface BlockService {
    boolean isBlocked(String ip);
    void block(String ip, LocalDateTime expireTime);
    void unblock(String ip);
    void cleanUpBlocks();
}
