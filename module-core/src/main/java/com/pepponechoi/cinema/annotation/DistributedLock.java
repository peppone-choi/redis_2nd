package com.pepponechoi.cinema.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.TimeUnit;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface DistributedLock {

    String key();

    int waitTime() default 5;

    int leaseTime() default 3;

    TimeUnit timeUnit() default TimeUnit.SECONDS;
}
