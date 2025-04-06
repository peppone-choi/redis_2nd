package com.pepponechoi.cinema.blockIps.repository;

import com.pepponechoi.cinema.blockIps.entity.Block;
import java.time.LocalDateTime;
import java.util.Optional;

public interface BlockRepository {
    Optional<Block> findByIp(String ip);
    void deleteByExpireTimeBefore(LocalDateTime expireTime);
}
