package com.pepponechoi.cinema.screen.repository;

import com.pepponechoi.cinema.screen.entity.Screen;
import java.util.Collection;
import java.util.List;

public interface ScreenRepository {
    Screen save(Screen screen);

    Screen findById(Long id);
    List<Screen> findAll();

    void deleteByIdsIn(Collection<Long> ids);
}
