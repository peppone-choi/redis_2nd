package com.pepponechoi.cinema.user.repository;


import com.pepponechoi.cinema.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserJpaRepository extends JpaRepository<User, Long>, UserRepository {

}
