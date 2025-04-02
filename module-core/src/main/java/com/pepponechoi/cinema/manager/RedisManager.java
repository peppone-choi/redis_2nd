package com.pepponechoi.cinema.manager;

import java.util.Optional;

public interface RedisManager {
    <T> Optional<T> getValue(String key);
    <T> void setValue(String key, T value);
    void executeWithLock(String key, Runnable action);
}
