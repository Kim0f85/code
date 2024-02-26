create table Country (
    cseq NUMBER PRIMARY KEY,
    country varchar2(20)
);

drop table Country;
select * from Country;
drop table CountryInfo;
select * from CountryInfo;

select seq, kname from tableMovie
order by seq;


INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'미국');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'한국');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'일본');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'이탈리아');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'스페인');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'프랑스');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'중국');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'홍콩');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'태국');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'캐나다');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'벨기에');
INSERT INTO Country (cseq, country) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country),'영국');

CREATE TABLE CountryInfo (
    ciseq NUMBER PRIMARY KEY,
    cseq NUMBER ,
    mseq NUMBER NOT NULL,
    FOREIGN KEY (cseq) REFERENCES Country(cseq),
    FOREIGN KEY (mseq) REFERENCES tableMovie(seq)
);


/*
INSERT INTO CountryInfo (ciseq, mseq, cseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 1);

INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 1, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 2, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 3, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 4, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 5, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 6, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 7, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 8, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 9, 12);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 10, 4);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 10, 5);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 11, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 12, 6);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 13, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 14, 7);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 15, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 16, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 17, 6);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 18, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 19, 8);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 20, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 21, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 22, 8);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 22, 6);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 22, 9);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 23, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 24, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 25, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 26, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 27, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 28, 8);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 29, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 30, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 31, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 32, 10);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 32, 12);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 32, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 33, 6);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 33, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 34, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 35, 6);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 35, 12);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 35, 11);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 36, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 37, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 38, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 39, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 40, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 41, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 42, 12);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 42, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 43, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 44, 4);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 44, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 45, 3);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 46, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 47, 1);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 48, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 49, 2);
INSERT INTO Country (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(cseq), 0) + 1 FROM Country), 50, 3);
*/


INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 1);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 2);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 3);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 4);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 5);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 6);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 7);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 8);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 12, 9);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 4, 10);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 5, 10);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 11);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 6, 12);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 13);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 7, 14);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 15);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 16);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 6, 17);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 18);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 8, 19);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 20);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 21);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 8, 22);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 6, 22);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 9, 22);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 23);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 24);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 25);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 26);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 27);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 8, 28);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 29);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 30);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 31);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 10, 32);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 12, 32);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 32);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 6, 33);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 33);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 34);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 6, 35);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 12, 35);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 11, 35);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 36);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 37);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 38);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 39);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 40);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 41);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 12, 42);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 42);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 43);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 4, 44);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 44);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 45);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 46);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 1, 47);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 48);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 2, 49);
INSERT INTO CountryInfo (ciseq, cseq, mseq) VALUES((SELECT nvl(MAX(ciseq), 0) + 1 FROM CountryInfo), 3, 50);



