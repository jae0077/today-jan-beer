-- 대륙 INSERT
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '아시아');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '유럽');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '오세아니아');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '북아메리카');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '남아메리카');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '아프리카');

-- 대륙별 나라INSERT
INSERT INTO country values(country_idx_seq.NEXTVAL, '한국', 1, 'korea.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '중국', 1, 'korea.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '일본', 1, 'korea.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '태국', 1, 'korea.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '미국', 2, 'korea.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '독일', 3, 'korea.jpg', 'test');

INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '카스', 4.5, '라거', 'test', 1);
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '테라', 4.5, '라거', 'test', 1);


SELECT * FROM country WHERE COUNTRY_IDX = 1;
