-- 영화 30개 데이터 추가 (실제 영화)
INSERT INTO movie (title, rating, release_date, genre, thumbnail, running_time, created_at, updated_at) VALUES
                                                                                                            ('어벤져스: 엔드게임', 'R_12', '2024-12-01', 'ACTION', 'https://example.com/avengers.jpg', 181, NOW(), NOW()),
                                                                                                            ('기생충', 'R_15', '2024-11-20', 'HORROR', 'https://example.com/parasite.jpg', 132, NOW(), NOW()),
                                                                                                            ('미나리', 'R_12', '2024-11-15', 'ROMANCE', 'https://example.com/minari.jpg', 115, NOW(), NOW()),
                                                                                                            ('듄', 'R_12', '2024-11-10', 'SF', 'https://example.com/dune.jpg', 155, NOW(), NOW()),
                                                                                                            ('인터스텔라', 'R_12', '2024-11-05', 'SF', 'https://example.com/interstellar.jpg', 169, NOW(), NOW()),
                                                                                                            ('매트릭스', 'R_15', '2024-11-01', 'SF', 'https://example.com/matrix.jpg', 136, NOW(), NOW()),
                                                                                                            ('타이타닉', 'R_12', '2024-10-25', 'ROMANCE', 'https://example.com/titanic.jpg', 194, NOW(), NOW()),
                                                                                                            ('라라랜드', 'R_12', '2024-10-20', 'ROMANCE', 'https://example.com/lalaland.jpg', 128, NOW(), NOW()),
                                                                                                            ('쇼생크 탈출', 'R_15', '2024-10-15', 'ACTION', 'https://example.com/shawshank.jpg', 142, NOW(), NOW()),
                                                                                                            ('다크 나이트', 'R_15', '2024-10-10', 'ACTION', 'https://example.com/darkknight.jpg', 152, NOW(), NOW()),
                                                                                                            ('알라딘', 'R_ALL', '2024-10-05', 'ROMANCE', 'https://example.com/aladdin.jpg', 128, NOW(), NOW()),
                                                                                                            ('겨울왕국', 'R_ALL', '2024-10-01', 'ROMANCE', 'https://example.com/frozen.jpg', 108, NOW(), NOW()),
                                                                                                            ('조커', 'R_19', '2024-09-25', 'HORROR', 'https://example.com/joker.jpg', 122, NOW(), NOW()),
                                                                                                            ('쥬라기 월드', 'R_12', '2024-09-20', 'ACTION', 'https://example.com/jurassicworld.jpg', 124, NOW(), NOW()),
                                                                                                            ('인셉션', 'R_12', '2024-09-15', 'SF', 'https://example.com/inception.jpg', 148, NOW(), NOW()),
                                                                                                            ('아바타', 'R_12', '2024-09-10', 'SF', 'https://example.com/avatar.jpg', 162, NOW(), NOW()),
                                                                                                            ('킹스맨', 'R_19', '2024-09-05', 'ACTION', 'https://example.com/kingsman.jpg', 129, NOW(), NOW()),
                                                                                                            ('미션 임파서블', 'R_15', '2024-09-01', 'ACTION', 'https://example.com/missionimpossible.jpg', 147, NOW(), NOW()),
                                                                                                            ('반지의 제왕', 'R_12', '2024-08-25', 'SF', 'https://example.com/lotr.jpg', 178, NOW(), NOW()),
                                                                                                            ('해리 포터와 마법사의 돌', 'R_ALL', '2024-08-20', 'SF', 'https://example.com/harrypotter.jpg', 152, NOW(), NOW()),
                                                                                                            ('레옹', 'R_19', '2024-08-15', 'ACTION', 'https://example.com/leon.jpg', 110, NOW(), NOW()),
                                                                                                            ('터미네이터 2', 'R_15', '2024-08-10', 'SF', 'https://example.com/terminator.jpg', 137, NOW(), NOW()),
                                                                                                            ('스파이더맨: 홈커밍', 'R_12', '2024-08-05', 'ACTION', 'https://example.com/spiderman.jpg', 133, NOW(), NOW()),
                                                                                                            ('어벤져스: 인피니티 워', 'R_12', '2024-08-01', 'ACTION', 'https://example.com/infinitywar.jpg', 149, NOW(), NOW()),
                                                                                                            ('블랙 팬서', 'R_12', '2024-07-25', 'ACTION', 'https://example.com/blackpanther.jpg', 134, NOW(), NOW()),
                                                                                                            ('겟 아웃', 'R_15', '2024-07-20', 'HORROR', 'https://example.com/getout.jpg', 104, NOW(), NOW()),
                                                                                                            ('셰이프 오브 워터', 'R_19', '2024-07-15', 'ROMANCE', 'https://example.com/shapeofwater.jpg', 123, NOW(), NOW()),
                                                                                                            ('스타워즈: 깨어난 포스', 'R_12', '2024-07-10', 'SF', 'https://example.com/starwars.jpg', 135, NOW(), NOW()),
                                                                                                            ('그래비티', 'R_12', '2024-07-05', 'SF', 'https://example.com/gravity.jpg', 91, NOW(), NOW()),
                                                                                                            ('매드 맥스: 분노의 도로', 'R_15', '2024-07-01', 'ACTION', 'https://example.com/madmax.jpg', 120, NOW(), NOW());

-- 추가 영화 데이터 (약 100개만 더 추가)
-- 31-50번 범위의 추가 영화
INSERT INTO movie (title, rating, release_date, genre, thumbnail, running_time, created_at, updated_at) VALUES
                                                                                                            ('영화 제목 31', 'R_12', '2024-06-15', 'ACTION', 'https://example.com/movie31.jpg', 125, NOW(), NOW()),
                                                                                                            ('영화 제목 32', 'R_15', '2024-06-10', 'HORROR', 'https://example.com/movie32.jpg', 118, NOW(), NOW()),
                                                                                                            ('영화 제목 33', 'R_ALL', '2024-06-05', 'ROMANCE', 'https://example.com/movie33.jpg', 132, NOW(), NOW()),
                                                                                                            ('영화 제목 34', 'R_12', '2024-06-01', 'SF', 'https://example.com/movie34.jpg', 145, NOW(), NOW()),
                                                                                                            ('영화 제목 35', 'R_19', '2024-05-25', 'ACTION', 'https://example.com/movie35.jpg', 110, NOW(), NOW()),
                                                                                                            ('영화 제목 36', 'R_12', '2024-05-20', 'ROMANCE', 'https://example.com/movie36.jpg', 128, NOW(), NOW()),
                                                                                                            ('영화 제목 37', 'R_15', '2024-05-15', 'SF', 'https://example.com/movie37.jpg', 135, NOW(), NOW()),
                                                                                                            ('영화 제목 38', 'R_ALL', '2024-05-10', 'ACTION', 'https://example.com/movie38.jpg', 142, NOW(), NOW()),
                                                                                                            ('영화 제목 39', 'R_12', '2024-05-05', 'HORROR', 'https://example.com/movie39.jpg', 115, NOW(), NOW()),
                                                                                                            ('영화 제목 40', 'R_15', '2024-05-01', 'SF', 'https://example.com/movie40.jpg', 156, NOW(), NOW()),
                                                                                                            ('영화 제목 41', 'R_12', '2024-04-25', 'ROMANCE', 'https://example.com/movie41.jpg', 123, NOW(), NOW()),
                                                                                                            ('영화 제목 42', 'R_ALL', '2024-04-20', 'ACTION', 'https://example.com/movie42.jpg', 137, NOW(), NOW()),
                                                                                                            ('영화 제목 43', 'R_15', '2024-04-15', 'SF', 'https://example.com/movie43.jpg', 144, NOW(), NOW()),
                                                                                                            ('영화 제목 44', 'R_12', '2024-04-10', 'HORROR', 'https://example.com/movie44.jpg', 118, NOW(), NOW()),
                                                                                                            ('영화 제목 45', 'R_19', '2024-04-05', 'ACTION', 'https://example.com/movie45.jpg', 129, NOW(), NOW()),
                                                                                                            ('영화 제목 46', 'R_12', '2024-04-01', 'ROMANCE', 'https://example.com/movie46.jpg', 132, NOW(), NOW()),
                                                                                                            ('영화 제목 47', 'R_15', '2024-03-25', 'ACTION', 'https://example.com/movie47.jpg', 145, NOW(), NOW()),
                                                                                                            ('영화 제목 48', 'R_ALL', '2024-03-20', 'SF', 'https://example.com/movie48.jpg', 138, NOW(), NOW()),
                                                                                                            ('영화 제목 49', 'R_12', '2024-03-15', 'HORROR', 'https://example.com/movie49.jpg', 127, NOW(), NOW()),
                                                                                                            ('영화 제목 50', 'R_15', '2024-03-10', 'ROMANCE', 'https://example.com/movie50.jpg', 119, NOW(), NOW());

-- 51-70번 범위의 추가 영화
INSERT INTO movie (title, rating, release_date, genre, thumbnail, running_time, created_at, updated_at) VALUES
                                                                                                            ('영화 제목 51', 'R_12', '2024-03-05', 'SF', 'https://example.com/movie51.jpg', 152, NOW(), NOW()),
                                                                                                            ('영화 제목 52', 'R_15', '2024-03-01', 'ACTION', 'https://example.com/movie52.jpg', 136, NOW(), NOW()),
                                                                                                            ('영화 제목 53', 'R_ALL', '2024-02-25', 'ROMANCE', 'https://example.com/movie53.jpg', 128, NOW(), NOW()),
                                                                                                            ('영화 제목 54', 'R_12', '2024-02-20', 'HORROR', 'https://example.com/movie54.jpg', 117, NOW(), NOW()),
                                                                                                            ('영화 제목 55', 'R_19', '2024-02-15', 'SF', 'https://example.com/movie55.jpg', 143, NOW(), NOW()),
                                                                                                            ('영화 제목 56', 'R_12', '2024-02-10', 'ACTION', 'https://example.com/movie56.jpg', 131, NOW(), NOW()),
                                                                                                            ('영화 제목 57', 'R_15', '2024-02-05', 'ROMANCE', 'https://example.com/movie57.jpg', 122, NOW(), NOW()),
                                                                                                            ('영화 제목 58', 'R_ALL', '2024-02-01', 'SF', 'https://example.com/movie58.jpg', 147, NOW(), NOW()),
                                                                                                            ('영화 제목 59', 'R_12', '2024-01-25', 'HORROR', 'https://example.com/movie59.jpg', 113, NOW(), NOW()),
                                                                                                            ('영화 제목 60', 'R_15', '2024-01-20', 'ACTION', 'https://example.com/movie60.jpg', 138, NOW(), NOW()),
                                                                                                            ('영화 제목 61', 'R_12', '2024-01-15', 'ROMANCE', 'https://example.com/movie61.jpg', 126, NOW(), NOW()),
                                                                                                            ('영화 제목 62', 'R_ALL', '2024-01-10', 'SF', 'https://example.com/movie62.jpg', 151, NOW(), NOW()),
                                                                                                            ('영화 제목 63', 'R_15', '2024-01-05', 'ACTION', 'https://example.com/movie63.jpg', 134, NOW(), NOW()),
                                                                                                            ('영화 제목 64', 'R_12', '2024-01-01', 'HORROR', 'https://example.com/movie64.jpg', 120, NOW(), NOW()),
                                                                                                            ('영화 제목 65', 'R_19', '2023-12-25', 'ROMANCE', 'https://example.com/movie65.jpg', 129, NOW(), NOW()),
                                                                                                            ('영화 제목 66', 'R_12', '2023-12-20', 'SF', 'https://example.com/movie66.jpg', 145, NOW(), NOW()),
                                                                                                            ('영화 제목 67', 'R_15', '2023-12-15', 'ACTION', 'https://example.com/movie67.jpg', 132, NOW(), NOW()),
                                                                                                            ('영화 제목 68', 'R_ALL', '2023-12-10', 'ROMANCE', 'https://example.com/movie68.jpg', 124, NOW(), NOW()),
                                                                                                            ('영화 제목 69', 'R_12', '2023-12-05', 'HORROR', 'https://example.com/movie69.jpg', 116, NOW(), NOW()),
                                                                                                            ('영화 제목 70', 'R_15', '2023-12-01', 'SF', 'https://example.com/movie70.jpg', 139, NOW(), NOW());

-- 71-90번 범위의 추가 영화
INSERT INTO movie (title, rating, release_date, genre, thumbnail, running_time, created_at, updated_at) VALUES
                                                                                                            ('영화 제목 71', 'R_12', '2023-11-25', 'ACTION', 'https://example.com/movie71.jpg', 127, NOW(), NOW()),
                                                                                                            ('영화 제목 72', 'R_15', '2023-11-20', 'ROMANCE', 'https://example.com/movie72.jpg', 135, NOW(), NOW()),
                                                                                                            ('영화 제목 73', 'R_ALL', '2023-11-15', 'SF', 'https://example.com/movie73.jpg', 148, NOW(), NOW()),
                                                                                                            ('영화 제목 74', 'R_12', '2023-11-10', 'HORROR', 'https://example.com/movie74.jpg', 118, NOW(), NOW()),
                                                                                                            ('영화 제목 75', 'R_19', '2023-11-05', 'ACTION', 'https://example.com/movie75.jpg', 130, NOW(), NOW()),
                                                                                                            ('영화 제목 76', 'R_12', '2023-11-01', 'ROMANCE', 'https://example.com/movie76.jpg', 122, NOW(), NOW()),
                                                                                                            ('영화 제목 77', 'R_15', '2023-10-25', 'SF', 'https://example.com/movie77.jpg', 142, NOW(), NOW()),
                                                                                                            ('영화 제목 78', 'R_ALL', '2023-10-20', 'ACTION', 'https://example.com/movie78.jpg', 133, NOW(), NOW()),
                                                                                                            ('영화 제목 79', 'R_12', '2023-10-15', 'HORROR', 'https://example.com/movie79.jpg', 119, NOW(), NOW()),
                                                                                                            ('영화 제목 80', 'R_15', '2023-10-10', 'ROMANCE', 'https://example.com/movie80.jpg', 125, NOW(), NOW()),
                                                                                                            ('영화 제목 81', 'R_12', '2023-10-05', 'SF', 'https://example.com/movie81.jpg', 150, NOW(), NOW()),
                                                                                                            ('영화 제목 82', 'R_ALL', '2023-10-01', 'ACTION', 'https://example.com/movie82.jpg', 137, NOW(), NOW()),
                                                                                                            ('영화 제목 83', 'R_15', '2023-09-25', 'ROMANCE', 'https://example.com/movie83.jpg', 128, NOW(), NOW()),
                                                                                                            ('영화 제목 84', 'R_12', '2023-09-20', 'HORROR', 'https://example.com/movie84.jpg', 114, NOW(), NOW()),
                                                                                                            ('영화 제목 85', 'R_19', '2023-09-15', 'SF', 'https://example.com/movie85.jpg', 143, NOW(), NOW()),
                                                                                                            ('영화 제목 86', 'R_12', '2023-09-10', 'ACTION', 'https://example.com/movie86.jpg', 131, NOW(), NOW()),
                                                                                                            ('영화 제목 87', 'R_15', '2023-09-05', 'ROMANCE', 'https://example.com/movie87.jpg', 123, NOW(), NOW()),
                                                                                                            ('영화 제목 88', 'R_ALL', '2023-09-01', 'SF', 'https://example.com/movie88.jpg', 146, NOW(), NOW()),
                                                                                                            ('영화 제목 89', 'R_12', '2023-08-25', 'HORROR', 'https://example.com/movie89.jpg', 115, NOW(), NOW()),
                                                                                                            ('영화 제목 90', 'R_15', '2023-08-20', 'ACTION', 'https://example.com/movie90.jpg', 134, NOW(), NOW());

-- 91-110번 범위의 추가 영화
INSERT INTO movie (title, rating, release_date, genre, thumbnail, running_time, created_at, updated_at) VALUES
                                                                                                            ('영화 제목 91', 'R_12', '2023-08-15', 'ROMANCE', 'https://example.com/movie91.jpg', 126, NOW(), NOW()),
                                                                                                            ('영화 제목 92', 'R_15', '2023-08-10', 'SF', 'https://example.com/movie92.jpg', 144, NOW(), NOW()),
                                                                                                            ('영화 제목 93', 'R_ALL', '2023-08-05', 'ACTION', 'https://example.com/movie93.jpg', 137, NOW(), NOW()),
                                                                                                            ('영화 제목 94', 'R_12', '2023-08-01', 'HORROR', 'https://example.com/movie94.jpg', 118, NOW(), NOW()),
                                                                                                            ('영화 제목 95', 'R_19', '2023-07-25', 'ROMANCE', 'https://example.com/movie95.jpg', 129, NOW(), NOW()),
                                                                                                            ('영화 제목 96', 'R_12', '2023-07-20', 'SF', 'https://example.com/movie96.jpg', 152, NOW(), NOW()),
                                                                                                            ('영화 제목 97', 'R_15', '2023-07-15', 'ACTION', 'https://example.com/movie97.jpg', 135, NOW(), NOW()),
                                                                                                            ('영화 제목 98', 'R_ALL', '2023-07-10', 'ROMANCE', 'https://example.com/movie98.jpg', 127, NOW(), NOW()),
                                                                                                            ('영화 제목 99', 'R_12', '2023-07-05', 'HORROR', 'https://example.com/movie99.jpg', 116, NOW(), NOW()),
                                                                                                            ('영화 제목 100', 'R_15', '2023-07-01', 'SF', 'https://example.com/movie100.jpg', 140, NOW(), NOW()),
                                                                                                            ('영화 제목 101', 'R_12', '2023-06-25', 'ACTION', 'https://example.com/movie101.jpg', 132, NOW(), NOW()),
                                                                                                            ('영화 제목 102', 'R_ALL', '2023-06-20', 'ROMANCE', 'https://example.com/movie102.jpg', 124, NOW(), NOW()),
                                                                                                            ('영화 제목 103', 'R_15', '2023-06-15', 'SF', 'https://example.com/movie103.jpg', 147, NOW(), NOW()),
                                                                                                            ('영화 제목 104', 'R_12', '2023-06-10', 'HORROR', 'https://example.com/movie104.jpg', 119, NOW(), NOW()),
                                                                                                            ('영화 제목 105', 'R_19', '2023-06-05', 'ACTION', 'https://example.com/movie105.jpg', 133, NOW(), NOW()),
                                                                                                            ('영화 제목 106', 'R_12', '2023-06-01', 'ROMANCE', 'https://example.com/movie106.jpg', 125, NOW(), NOW()),
                                                                                                            ('영화 제목 107', 'R_15', '2023-05-25', 'SF', 'https://example.com/movie107.jpg', 141, NOW(), NOW()),
                                                                                                            ('영화 제목 108', 'R_ALL', '2023-05-20', 'ACTION', 'https://example.com/movie108.jpg', 136, NOW(), NOW()),
                                                                                                            ('영화 제목 109', 'R_12', '2023-05-15', 'HORROR', 'https://example.com/movie109.jpg', 120, NOW(), NOW()),
                                                                                                            ('영화 제목 110', 'R_15', '2023-05-10', 'ROMANCE', 'https://example.com/movie110.jpg', 128, NOW(), NOW());

-- 111-130번 범위의 추가 영화
INSERT INTO movie (title, rating, release_date, genre, thumbnail, running_time, created_at, updated_at) VALUES
                                                                                                            ('영화 제목 111', 'R_12', '2023-05-05', 'SF', 'https://example.com/movie111.jpg', 149, NOW(), NOW()),
                                                                                                            ('영화 제목 112', 'R_15', '2023-05-01', 'ACTION', 'https://example.com/movie112.jpg', 134, NOW(), NOW()),
                                                                                                            ('영화 제목 113', 'R_ALL', '2023-04-25', 'ROMANCE', 'https://example.com/movie113.jpg', 126, NOW(), NOW()),
                                                                                                            ('영화 제목 114', 'R_12', '2023-04-20', 'HORROR', 'https://example.com/movie114.jpg', 117, NOW(), NOW()),
                                                                                                            ('영화 제목 115', 'R_19', '2023-04-15', 'SF', 'https://example.com/movie115.jpg', 145, NOW(), NOW()),
                                                                                                            ('영화 제목 116', 'R_12', '2023-04-10', 'ACTION', 'https://example.com/movie116.jpg', 130, NOW(), NOW()),
                                                                                                            ('영화 제목 117', 'R_15', '2023-04-05', 'ROMANCE', 'https://example.com/movie117.jpg', 123, NOW(), NOW()),
                                                                                                            ('영화 제목 118', 'R_ALL', '2023-04-01', 'SF', 'https://example.com/movie118.jpg', 151, NOW(), NOW()),
                                                                                                            ('영화 제목 119', 'R_12', '2023-03-25', 'HORROR', 'https://example.com/movie119.jpg', 114, NOW(), NOW()),
                                                                                                            ('영화 제목 120', 'R_15', '2023-03-20', 'ACTION', 'https://example.com/movie120.jpg', 136, NOW(), NOW()),
                                                                                                            ('영화 제목 121', 'R_12', '2023-03-15', 'ROMANCE', 'https://example.com/movie121.jpg', 125, NOW(), NOW()),
                                                                                                            ('영화 제목 122', 'R_ALL', '2023-03-10', 'SF', 'https://example.com/movie122.jpg', 142, NOW(), NOW()),
                                                                                                            ('영화 제목 123', 'R_15', '2023-03-05', 'ACTION', 'https://example.com/movie123.jpg', 138, NOW(), NOW()),
                                                                                                            ('영화 제목 124', 'R_12', '2023-03-01', 'HORROR', 'https://example.com/movie124.jpg', 119, NOW(), NOW()),
                                                                                                            ('영화 제목 125', 'R_19', '2023-02-25', 'ROMANCE', 'https://example.com/movie125.jpg', 127, NOW(), NOW()),
                                                                                                            ('영화 제목 126', 'R_12', '2023-02-20', 'SF', 'https://example.com/movie126.jpg', 144, NOW(), NOW()),
                                                                                                            ('영화 제목 127', 'R_15', '2023-02-15', 'ACTION', 'https://example.com/movie127.jpg', 133, NOW(), NOW()),
                                                                                                            ('영화 제목 128', 'R_ALL', '2023-02-10', 'ROMANCE', 'https://example.com/movie128.jpg', 122, NOW(), NOW()),
                                                                                                            ('영화 제목 129', 'R_12', '2023-02-05', 'HORROR', 'https://example.com/movie129.jpg', 116, NOW(), NOW()),
                                                                                                            ('영화 제목 130', 'R_15', '2023-02-01', 'SF', 'https://example.com/movie130.jpg', 139, NOW(), NOW());

-- 상영관 3개 생성
INSERT INTO screen (name, created_at, updated_at) VALUES
                                                      ('스크린 1', NOW(), NOW()),
                                                      ('스크린 2', NOW(), NOW()),
                                                      ('스크린 3', NOW(), NOW());

-- 좌석 데이터 (상영관 1)
INSERT INTO seat (row_no, column_no, screen_id, created_at, updated_at) VALUES
                                                                            ('A', 1, 1, NOW(), NOW()),
                                                                            ('A', 2, 1, NOW(), NOW()),
                                                                            ('A', 3, 1, NOW(), NOW()),
                                                                            ('A', 4, 1, NOW(), NOW()),
                                                                            ('A', 5, 1, NOW(), NOW()),
                                                                            ('B', 1, 1, NOW(), NOW()),
                                                                            ('B', 2, 1, NOW(), NOW()),
                                                                            ('B', 3, 1, NOW(), NOW()),
                                                                            ('B', 4, 1, NOW(), NOW()),
                                                                            ('B', 5, 1, NOW(), NOW()),
                                                                            ('C', 1, 1, NOW(), NOW()),
                                                                            ('C', 2, 1, NOW(), NOW()),
                                                                            ('C', 3, 1, NOW(), NOW()),
                                                                            ('C', 4, 1, NOW(), NOW()),
                                                                            ('C', 5, 1, NOW(), NOW()),
                                                                            ('D', 1, 1, NOW(), NOW()),
                                                                            ('D', 2, 1, NOW(), NOW()),
                                                                            ('D', 3, 1, NOW(), NOW()),
                                                                            ('D', 4, 1, NOW(), NOW()),
                                                                            ('D', 5, 1, NOW(), NOW()),
                                                                            ('E', 1, 1, NOW(), NOW()),
                                                                            ('E', 2, 1, NOW(), NOW()),
                                                                            ('E', 3, 1, NOW(), NOW()),
                                                                            ('E', 4, 1, NOW(), NOW()),
                                                                            ('E', 5, 1, NOW(), NOW());

-- 좌석 데이터 (상영관 2)
INSERT INTO seat (row_no, column_no, screen_id, created_at, updated_at) VALUES
                                                                            ('A', 1, 2, NOW(), NOW()),
                                                                            ('A', 2, 2, NOW(), NOW()),
                                                                            ('A', 3, 2, NOW(), NOW()),
                                                                            ('A', 4, 2, NOW(), NOW()),
                                                                            ('A', 5, 2, NOW(), NOW()),
                                                                            ('B', 1, 2, NOW(), NOW()),
                                                                            ('B', 2, 2, NOW(), NOW()),
                                                                            ('B', 3, 2, NOW(), NOW()),
                                                                            ('B', 4, 2, NOW(), NOW()),
                                                                            ('B', 5, 2, NOW(), NOW()),
                                                                            ('C', 1, 2, NOW(), NOW()),
                                                                            ('C', 2, 2, NOW(), NOW()),
                                                                            ('C', 3, 2, NOW(), NOW()),
                                                                            ('C', 4, 2, NOW(), NOW()),
                                                                            ('C', 5, 2, NOW(), NOW()),
                                                                            ('D', 1, 2, NOW(), NOW()),
                                                                            ('D', 2, 2, NOW(), NOW()),
                                                                            ('D', 3, 2, NOW(), NOW()),
                                                                            ('D', 4, 2, NOW(), NOW()),
                                                                            ('D', 5, 2, NOW(), NOW()),
                                                                            ('E', 1, 2, NOW(), NOW()),
                                                                            ('E', 2, 2, NOW(), NOW()),
                                                                            ('E', 3, 2, NOW(), NOW()),
                                                                            ('E', 4, 2, NOW(), NOW()),
                                                                            ('E', 5, 2, NOW(), NOW());

-- 좌석 데이터 (상영관 3)
INSERT INTO seat (row_no, column_no, screen_id, created_at, updated_at) VALUES
                                                                            ('A', 1, 3, NOW(), NOW()),
                                                                            ('A', 2, 3, NOW(), NOW()),
                                                                            ('A', 3, 3, NOW(), NOW()),
                                                                            ('A', 4, 3, NOW(), NOW()),
                                                                            ('A', 5, 3, NOW(), NOW()),
                                                                            ('B', 1, 3, NOW(), NOW()),
                                                                            ('B', 2, 3, NOW(), NOW()),
                                                                            ('B', 3, 3, NOW(), NOW()),
                                                                            ('B', 4, 3, NOW(), NOW()),
                                                                            ('B', 5, 3, NOW(), NOW()),
                                                                            ('C', 1, 3, NOW(), NOW()),
                                                                            ('C', 2, 3, NOW(), NOW()),
                                                                            ('C', 3, 3, NOW(), NOW()),
                                                                            ('C', 4, 3, NOW(), NOW()),
                                                                            ('C', 5, 3, NOW(), NOW()),
                                                                            ('D', 1, 3, NOW(), NOW()),
                                                                            ('D', 2, 3, NOW(), NOW()),
                                                                            ('D', 3, 3, NOW(), NOW()),
                                                                            ('D', 4, 3, NOW(), NOW()),
                                                                            ('D', 5, 3, NOW(), NOW()),
                                                                            ('E', 1, 3, NOW(), NOW()),
                                                                            ('E', 2, 3, NOW(), NOW()),
                                                                            ('E', 3, 3, NOW(), NOW()),
                                                                            ('E', 4, 3, NOW(), NOW()),
                                                                            ('E', 5, 3, NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 1, 현재 날짜)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (1, 1, TIMESTAMP(CURDATE(), '10:00:00'), TIMESTAMP(CURDATE(), '12:30:00'), NOW(), NOW()),
                                                                                   (2, 1, TIMESTAMP(CURDATE(), '13:00:00'), TIMESTAMP(CURDATE(), '15:30:00'), NOW(), NOW()),
                                                                                   (3, 1, TIMESTAMP(CURDATE(), '16:00:00'), TIMESTAMP(CURDATE(), '18:30:00'), NOW(), NOW()),
                                                                                   (4, 1, TIMESTAMP(CURDATE(), '19:00:00'), TIMESTAMP(CURDATE(), '21:30:00'), NOW(), NOW()),
                                                                                   (5, 1, TIMESTAMP(CURDATE(), '22:00:00'), TIMESTAMP(CURDATE(), '00:30:00'), NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 1, 현재 날짜 + 1일)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (6, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '10:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '12:30:00'), NOW(), NOW()),
                                                                                   (7, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '13:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '15:30:00'), NOW(), NOW()),
                                                                                   (8, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '16:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '18:30:00'), NOW(), NOW()),
                                                                                   (9, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '19:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '21:30:00'), NOW(), NOW()),
                                                                                   (10, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '22:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '00:30:00'), NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 1, 현재 날짜 + 2일)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (11, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '10:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '12:30:00'), NOW(), NOW()),
                                                                                   (12, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '13:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '15:30:00'), NOW(), NOW()),
                                                                                   (13, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '16:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '18:30:00'), NOW(), NOW()),
                                                                                   (14, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '19:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '21:30:00'), NOW(), NOW()),
                                                                                   (15, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '22:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '00:30:00'), NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 2, 현재 날짜)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (16, 2, TIMESTAMP(CURDATE(), '10:30:00'), TIMESTAMP(CURDATE(), '13:00:00'), NOW(), NOW()),
                                                                                   (17, 2, TIMESTAMP(CURDATE(), '13:30:00'), TIMESTAMP(CURDATE(), '16:00:00'), NOW(), NOW()),
                                                                                   (18, 2, TIMESTAMP(CURDATE(), '16:30:00'), TIMESTAMP(CURDATE(), '19:00:00'), NOW(), NOW()),
                                                                                   (19, 2, TIMESTAMP(CURDATE(), '19:30:00'), TIMESTAMP(CURDATE(), '22:00:00'), NOW(), NOW()),
                                                                                   (20, 2, TIMESTAMP(CURDATE(), '22:30:00'), TIMESTAMP(CURDATE(), '01:00:00'), NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 2, 현재 날짜 + 1일)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (21, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '10:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '13:00:00'), NOW(), NOW()),
                                                                                   (22, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '13:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '16:00:00'), NOW(), NOW()),
                                                                                   (23, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '16:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '19:00:00'), NOW(), NOW()),
                                                                                   (24, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '19:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '22:00:00'), NOW(), NOW()),
                                                                                   (25, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '22:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '01:00:00'), NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 2, 현재 날짜 + 2일)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (26, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '10:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '13:00:00'), NOW(), NOW()),
                                                                                   (27, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '13:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '16:00:00'), NOW(), NOW()),
                                                                                   (28, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '16:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '19:00:00'), NOW(), NOW()),
                                                                                   (29, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '19:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '22:00:00'), NOW(), NOW()),
                                                                                   (30, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '22:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '01:00:00'), NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 3, 현재 날짜)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (1, 3, TIMESTAMP(CURDATE(), '11:00:00'), TIMESTAMP(CURDATE(), '13:30:00'), NOW(), NOW()),
                                                                                   (2, 3, TIMESTAMP(CURDATE(), '14:00:00'), TIMESTAMP(CURDATE(), '16:30:00'), NOW(), NOW()),
                                                                                   (3, 3, TIMESTAMP(CURDATE(), '17:00:00'), TIMESTAMP(CURDATE(), '19:30:00'), NOW(), NOW()),
                                                                                   (4, 3, TIMESTAMP(CURDATE(), '20:00:00'), TIMESTAMP(CURDATE(), '22:30:00'), NOW(), NOW()),
                                                                                   (5, 3, TIMESTAMP(CURDATE(), '23:00:00'), TIMESTAMP(CURDATE(), '01:30:00'), NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 3, 현재 날짜 + 1일)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (6, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '11:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '13:30:00'), NOW(), NOW()),
                                                                                   (7, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '14:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '16:30:00'), NOW(), NOW()),
                                                                                   (8, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '17:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '19:30:00'), NOW(), NOW()),
                                                                                   (9, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '20:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '22:30:00'), NOW(), NOW()),
                                                                                   (10, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '23:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 1 DAY), '01:30:00'), NOW(), NOW());

-- 상영 스케줄 데이터 (상영관 3, 현재 날짜 + 2일)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
                                                                                   (11, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '11:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '13:30:00'), NOW(), NOW()),
                                                                                   (12, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '14:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '16:30:00'), NOW(), NOW()),
                                                                                   (13, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '17:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '19:30:00'), NOW(), NOW()),
                                                                                   (14, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '20:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '22:30:00'), NOW(), NOW()),
                                                                                   (15, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '23:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 2 DAY), '01:30:00'), NOW(), NOW());

-- 3일부터 6일까지의 스케줄 데이터 (상영관 1)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
-- 현재 날짜 + 3일
(1, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '10:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '12:30:00'), NOW(), NOW()),
(2, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '13:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '15:30:00'), NOW(), NOW()),
(3, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '16:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '18:30:00'), NOW(), NOW()),
(4, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '19:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '21:30:00'), NOW(), NOW()),
(5, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '22:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '00:30:00'), NOW(), NOW()),

-- 현재 날짜 + 4일
(6, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '10:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '12:30:00'), NOW(), NOW()),
(7, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '13:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '15:30:00'), NOW(), NOW()),
(8, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '16:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '18:30:00'), NOW(), NOW()),
(9, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '19:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '21:30:00'), NOW(), NOW()),
(10, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '22:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '00:30:00'), NOW(), NOW()),

-- 현재 날짜 + 5일
(11, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '10:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '12:30:00'), NOW(), NOW()),
(12, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '13:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '15:30:00'), NOW(), NOW()),
(13, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '16:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '18:30:00'), NOW(), NOW()),
(14, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '19:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '21:30:00'), NOW(), NOW()),
(15, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '22:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '00:30:00'), NOW(), NOW()),

-- 현재 날짜 + 6일
(16, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '10:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '12:30:00'), NOW(), NOW()),
(17, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '13:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '15:30:00'), NOW(), NOW()),
(18, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '16:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '18:30:00'), NOW(), NOW()),
(19, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '19:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '21:30:00'), NOW(), NOW()),
(20, 1, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '22:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '00:30:00'), NOW(), NOW());

-- 3일부터 6일까지의 스케줄 데이터 (상영관 2)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
-- 현재 날짜 + 3일
(21, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '10:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '13:00:00'), NOW(), NOW()),
(22, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '13:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '16:00:00'), NOW(), NOW()),
(23, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '16:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '19:00:00'), NOW(), NOW()),
(24, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '19:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '22:00:00'), NOW(), NOW()),
(25, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '22:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '01:00:00'), NOW(), NOW()),

-- 현재 날짜 + 4일
(26, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '10:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '13:00:00'), NOW(), NOW()),
(27, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '13:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '16:00:00'), NOW(), NOW()),
(28, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '16:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '19:00:00'), NOW(), NOW()),
(29, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '19:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '22:00:00'), NOW(), NOW()),
(30, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '22:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '01:00:00'), NOW(), NOW()),

-- 현재 날짜 + 5일
(1, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '10:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '13:00:00'), NOW(), NOW()),
(2, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '13:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '16:00:00'), NOW(), NOW()),
(3, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '16:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '19:00:00'), NOW(), NOW()),
(4, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '19:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '22:00:00'), NOW(), NOW()),
(5, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '22:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '01:00:00'), NOW(), NOW()),

-- 현재 날짜 + 6일
(6, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '10:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '13:00:00'), NOW(), NOW()),
(7, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '13:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '16:00:00'), NOW(), NOW()),
(8, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '16:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '19:00:00'), NOW(), NOW()),
(9, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '19:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '22:00:00'), NOW(), NOW()),
(10, 2, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '22:30:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '01:00:00'), NOW(), NOW());

-- 3일부터 6일까지의 스케줄 데이터 (상영관 3)
INSERT INTO schedule (movie_id, screen_id, start, end, created_at, updated_at) VALUES
-- 현재 날짜 + 3일
(11, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '11:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '13:30:00'), NOW(), NOW()),
(12, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '14:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '16:30:00'), NOW(), NOW()),
(13, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '17:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '19:30:00'), NOW(), NOW()),
(14, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '20:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '22:30:00'), NOW(), NOW()),
(15, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '23:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 3 DAY), '01:30:00'), NOW(), NOW()),

-- 현재 날짜 + 4일
(16, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '11:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '13:30:00'), NOW(), NOW()),
(17, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '14:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '16:30:00'), NOW(), NOW()),
(18, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '17:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '19:30:00'), NOW(), NOW()),
(19, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '20:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '22:30:00'), NOW(), NOW()),
(20, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '23:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 4 DAY), '01:30:00'), NOW(), NOW()),

-- 현재 날짜 + 5일
(21, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '11:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '13:30:00'), NOW(), NOW()),
(22, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '14:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '16:30:00'), NOW(), NOW()),
(23, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '17:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '19:30:00'), NOW(), NOW()),
(24, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '20:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '22:30:00'), NOW(), NOW()),
(25, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '23:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '01:30:00'), NOW(), NOW()),

-- 현재 날짜 + 6일
(26, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '11:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '13:30:00'), NOW(), NOW()),
(27, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '14:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '16:30:00'), NOW(), NOW()),
(28, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '17:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '19:30:00'), NOW(), NOW()),
(29, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '20:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '22:30:00'), NOW(), NOW()),
(30, 3, TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '23:00:00'), TIMESTAMP(DATE_ADD(CURDATE(), INTERVAL 6 DAY), '01:30:00'), NOW(), NOW());