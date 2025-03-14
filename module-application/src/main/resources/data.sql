-- 영화 더미 데이터 생성 (500개)
-- 먼저 테이블이 존재하면 삭제하고 다시 생성할 경우를 위한 DELETE 문
DELETE FROM movie;
ALTER TABLE movie AUTO_INCREMENT = 1;

-- 영화 데이터 INSERT
INSERT INTO movie (title, rating, release_date, genre, thumbnail, running_time, created_at, updated_at) VALUES
                                                                                                            ('어벤져스: 엔드게임', 'R_12', '2019-04-24', 'ACTION', 'https://example.com/avengers.jpg', 181, NOW(), NOW()),
                                                                                                            ('기생충', 'R_15', '2019-05-30', 'HORROR', 'https://example.com/parasite.jpg', 132, NOW(), NOW()),
                                                                                                            ('미나리', 'R_12', '2021-03-03', 'ROMANCE', 'https://example.com/minari.jpg', 115, NOW(), NOW()),
                                                                                                            ('듄', 'R_12', '2021-10-20', 'SF', 'https://example.com/dune.jpg', 155, NOW(), NOW()),
                                                                                                            ('인터스텔라', 'R_12', '2014-11-06', 'SF', 'https://example.com/interstellar.jpg', 169, NOW(), NOW()),
                                                                                                            ('매트릭스', 'R_15', '1999-05-15', 'SF', 'https://example.com/matrix.jpg', 136, NOW(), NOW()),
                                                                                                            ('타이타닉', 'R_12', '1998-02-20', 'ROMANCE', 'https://example.com/titanic.jpg', 194, NOW(), NOW()),
                                                                                                            ('라라랜드', 'R_12', '2016-12-07', 'ROMANCE', 'https://example.com/lalaland.jpg', 128, NOW(), NOW()),
                                                                                                            ('쇼생크 탈출', 'R_15', '1995-01-28', 'ACTION', 'https://example.com/shawshank.jpg', 142, NOW(), NOW()),
                                                                                                            ('다크 나이트', 'R_15', '2008-08-06', 'ACTION', 'https://example.com/darkknight.jpg', 152, NOW(), NOW()),
                                                                                                            ('알라딘', 'R_ALL', '2019-05-23', 'ROMANCE', 'https://example.com/aladdin.jpg', 128, NOW(), NOW()),
                                                                                                            ('겨울왕국', 'R_ALL', '2014-01-16', 'ROMANCE', 'https://example.com/frozen.jpg', 108, NOW(), NOW()),
                                                                                                            ('조커', 'R_19', '2019-10-02', 'HORROR', 'https://example.com/joker.jpg', 122, NOW(), NOW()),
                                                                                                            ('쥬라기 월드', 'R_12', '2015-06-10', 'ACTION', 'https://example.com/jurassicworld.jpg', 124, NOW(), NOW()),
                                                                                                            ('인셉션', 'R_12', '2010-07-21', 'SF', 'https://example.com/inception.jpg', 148, NOW(), NOW()),
                                                                                                            ('아바타', 'R_12', '2009-12-17', 'SF', 'https://example.com/avatar.jpg', 162, NOW(), NOW()),
                                                                                                            ('킹스맨', 'R_19', '2015-02-11', 'ACTION', 'https://example.com/kingsman.jpg', 129, NOW(), NOW()),
                                                                                                            ('미션 임파서블', 'R_15', '2018-07-25', 'ACTION', 'https://example.com/missionimpossible.jpg', 147, NOW(), NOW()),
                                                                                                            ('반지의 제왕', 'R_12', '2001-12-31', 'SF', 'https://example.com/lotr.jpg', 178, NOW(), NOW()),
                                                                                                            ('해리 포터와 마법사의 돌', 'R_ALL', '2001-12-14', 'SF', 'https://example.com/harrypotter.jpg', 152, NOW(), NOW()),
                                                                                                            ('레옹', 'R_19', '1995-02-18', 'ACTION', 'https://example.com/leon.jpg', 110, NOW(), NOW()),
                                                                                                            ('터미네이터 2', 'R_15', '1991-07-05', 'SF', 'https://example.com/terminator.jpg', 137, NOW(), NOW()),
                                                                                                            ('스파이더맨: 홈커밍', 'R_12', '2017-07-05', 'ACTION', 'https://example.com/spiderman.jpg', 133, NOW(), NOW()),
                                                                                                            ('어벤져스: 인피니티 워', 'R_12', '2018-04-25', 'ACTION', 'https://example.com/infinitywar.jpg', 149, NOW(), NOW()),
                                                                                                            ('블랙 팬서', 'R_12', '2018-02-14', 'ACTION', 'https://example.com/blackpanther.jpg', 134, NOW(), NOW()),
                                                                                                            ('겟 아웃', 'R_15', '2017-05-17', 'HORROR', 'https://example.com/getout.jpg', 104, NOW(), NOW()),
                                                                                                            ('셰이프 오브 워터', 'R_19', '2018-02-22', 'ROMANCE', 'https://example.com/shapeofwater.jpg', 123, NOW(), NOW()),
                                                                                                            ('스타워즈: 깨어난 포스', 'R_12', '2015-12-17', 'SF', 'https://example.com/starwars.jpg', 135, NOW(), NOW()),
                                                                                                            ('그래비티', 'R_12', '2013-10-10', 'SF', 'https://example.com/gravity.jpg', 91, NOW(), NOW()),
                                                                                                            ('매드 맥스: 분노의 도로', 'R_15', '2015-05-14', 'ACTION', 'https://example.com/madmax.jpg', 120, NOW(), NOW());

-- 나머지 470개 영화 데이터 생성
INSERT INTO movie (title, rating, release_date, genre, thumbnail, running_time, created_at, updated_at)
WITH RECURSIVE movie_list AS (
    SELECT 31 as id, CONCAT('영화 제목 ', 31) as title
    UNION ALL
    SELECT id + 1, CONCAT('영화 제목 ', id + 1)
    FROM movie_list
    WHERE id < 500
)
SELECT
    title,
    ELT(1 + FLOOR(RAND() * 5), 'R_ALL', 'R_12', 'R_15', 'R_19', 'R_LIMITED'),
    DATE_ADD('2000-01-01', INTERVAL FLOOR(RAND() * 9125) DAY),
    ELT(1 + FLOOR(RAND() * 4), 'ACTION', 'ROMANCE', 'HORROR', 'SF'),
    CONCAT('https://example.com/movie', id, '.jpg'),
    90 + FLOOR(RAND() * 120),
    NOW(),
    NOW()
FROM movie_list;