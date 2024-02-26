
drop table tableMovieRating;

CREATE TABLE tableMovieRating (
	seq NUMBER PRIMARY KEY,     -- 영화번호
	cineRating number,          -- 씨네평점
	netizenRating number        --
);

INSERT INTO tableMovieRating VALUES (1, 6.44, 7.6);
INSERT INTO tableMovieRating VALUES (2, null, null);
INSERT INTO tableMovieRating VALUES (3, null, 10);
INSERT INTO tableMovieRating VALUES (4, 5.67, 6.33);
INSERT INTO tableMovieRating VALUES (5, 5.67, 8);
INSERT INTO tableMovieRating VALUES (6, 5.33, 7.5);
INSERT INTO tableMovieRating VALUES (7, 6, 7);
INSERT INTO tableMovieRating VALUES (8, 5, null);
INSERT INTO tableMovieRating VALUES (9, 6, 7.5);
INSERT INTO tableMovieRating VALUES (10, null, 1);
INSERT INTO tableMovieRating VALUES (11, 4.5, null);
INSERT INTO tableMovieRating VALUES (12, 7.73, 9);
INSERT INTO tableMovieRating VALUES (13, 6.5, 8.67);
INSERT INTO tableMovieRating VALUES (14, null, null);
INSERT INTO tableMovieRating VALUES (15, 8.38, null);
INSERT INTO tableMovieRating VALUES (16, 8.27, 9.63);
INSERT INTO tableMovieRating VALUES (17, 5, null);
INSERT INTO tableMovieRating VALUES (18, 5, 7.68);
INSERT INTO tableMovieRating VALUES (19, null, 8.53);
INSERT INTO tableMovieRating VALUES (20, 6.67, 8.88);
INSERT INTO tableMovieRating VALUES (21, 5.33, 6.5);
INSERT INTO tableMovieRating VALUES (22, null, 8.79);
INSERT INTO tableMovieRating VALUES (23, 6.71, 6);
INSERT INTO tableMovieRating VALUES (24, null, 10);
INSERT INTO tableMovieRating VALUES (25, 6, 1);
INSERT INTO tableMovieRating VALUES (26, 5.5, 6);
INSERT INTO tableMovieRating VALUES (27, 7, null);
INSERT INTO tableMovieRating VALUES (28, 8.2, 8.37);
INSERT INTO tableMovieRating VALUES (29, 6, 7);
INSERT INTO tableMovieRating VALUES (30, null, null);
INSERT INTO tableMovieRating VALUES (31, 5.29, 7);
INSERT INTO tableMovieRating VALUES (32, 8.33, 7.33);
INSERT INTO tableMovieRating VALUES (33, 6, 6.5);
INSERT INTO tableMovieRating VALUES (34, null, null);
INSERT INTO tableMovieRating VALUES (35, 7.5, 8);
INSERT INTO tableMovieRating VALUES (36, 7.67, 9);
INSERT INTO tableMovieRating VALUES (37, null, null);
INSERT INTO tableMovieRating VALUES (38, 6, null);
INSERT INTO tableMovieRating VALUES (39, 8.6, 7);
INSERT INTO tableMovieRating VALUES (40, null, null);
INSERT INTO tableMovieRating VALUES (41, null, null);
INSERT INTO tableMovieRating VALUES (42, 8.4, 8.41);
INSERT INTO tableMovieRating VALUES (43, 5.33, 7);
INSERT INTO tableMovieRating VALUES (44, null, 7.33);
INSERT INTO tableMovieRating VALUES (45, 8, 8);
INSERT INTO tableMovieRating VALUES (46, 8, 7);
INSERT INTO tableMovieRating VALUES (47, 4, 1);
INSERT INTO tableMovieRating VALUES (48, null, null);
INSERT INTO tableMovieRating VALUES (49, 6.6, 8.4);
INSERT INTO tableMovieRating VALUES (50, null, null);

select
    *
from tableMovieRating;

select
    *
from TABLEMOVIE
    inner join tableMovieRating tMR on TABLEMOVIE.SEQ = tMR.seq
        order by TABLEMOVIE.SEQ asc;