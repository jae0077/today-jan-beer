INSERT INTO continent values(continent_idx_seq.NEXTVAL, '아시아');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '유럽');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '오세아니아');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '북아메리카');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '남아메리카');
INSERT INTO continent values(continent_idx_seq.NEXTVAL, '아프리카');

SELECT * FROM CONTINENT;



--아시아
INSERT INTO country values(country_idx_seq.NEXTVAL, '한국', 1, 'korea.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '중국', 1, 'china.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '일본', 1, 'japan.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '베트남', 1, 'vietnam.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '태국', 1, 'thailand.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '라오스', 1, 'laos.jpg', 'test');
--유럽
INSERT INTO country values(country_idx_seq.NEXTVAL, '독일', 2, 'germany.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '체코', 2, 'czech_republic.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '영국', 2, 'england.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '벨기에', 2, 'belgium.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '네덜란드', 2, 'netherlands.jpg', 'test');
INSERT INTO country values(country_idx_seq.NEXTVAL, '덴마크', 2, 'denmark.jpg', 'test');


--아시아
INSERT INTO country values(country_idx_seq.NEXTVAL, '한국', 1);
INSERT INTO country values(country_idx_seq.NEXTVAL, '중국', 1);
INSERT INTO country values(country_idx_seq.NEXTVAL, '일본', 1);
INSERT INTO country values(country_idx_seq.NEXTVAL, '베트남', 1);
INSERT INTO country values(country_idx_seq.NEXTVAL, '태국', 1);
INSERT INTO country values(country_idx_seq.NEXTVAL, '라오스', 1);
--유럽
INSERT INTO country values(country_idx_seq.NEXTVAL, '독일', 2);
INSERT INTO country values(country_idx_seq.NEXTVAL, '체코', 2);
INSERT INTO country values(country_idx_seq.NEXTVAL, '영국', 2);
INSERT INTO country values(country_idx_seq.NEXTVAL, '벨기에', 2);
INSERT INTO country values(country_idx_seq.NEXTVAL, '네덜란드', 2);
INSERT INTO country values(country_idx_seq.NEXTVAL, '덴마크', 2);
--오세아니아
INSERT INTO country values(country_idx_seq.NEXTVAL, '뉴질랜드', 3);
INSERT INTO country values(country_idx_seq.NEXTVAL, '파푸아뉴기니', 3);
INSERT INTO country values(country_idx_seq.NEXTVAL, '호주', 3);
INSERT INTO country values(country_idx_seq.NEXTVAL, '팔라우', 3);
INSERT INTO country values(country_idx_seq.NEXTVAL, '투발루', 3);
INSERT INTO country values(country_idx_seq.NEXTVAL, '솔로몬제도', 3);
--북아메리카
INSERT INTO country values(country_idx_seq.NEXTVAL, '미국', 4);
INSERT INTO country values(country_idx_seq.NEXTVAL, '캐나다', 4);
INSERT INTO country values(country_idx_seq.NEXTVAL, '멕시코', 4);
INSERT INTO country values(country_idx_seq.NEXTVAL, '과테말라', 4);
INSERT INTO country values(country_idx_seq.NEXTVAL, '쿠바', 4);
INSERT INTO country values(country_idx_seq.NEXTVAL, '자메이카', 4);
--남아메리카
INSERT INTO country values(country_idx_seq.NEXTVAL, '아르헨티나', 5);
INSERT INTO country values(country_idx_seq.NEXTVAL, '에콰도르', 5);
INSERT INTO country values(country_idx_seq.NEXTVAL, '브라질', 5);
INSERT INTO country values(country_idx_seq.NEXTVAL, '우루과이', 5);
INSERT INTO country values(country_idx_seq.NEXTVAL, '칠레', 5);
INSERT INTO country values(country_idx_seq.NEXTVAL, '페루', 5);
--아프리카
INSERT INTO country values(country_idx_seq.NEXTVAL, '모로코', 6);
INSERT INTO country values(country_idx_seq.NEXTVAL, '나이지리아', 6);
INSERT INTO country values(country_idx_seq.NEXTVAL, '이집트', 6);
INSERT INTO country values(country_idx_seq.NEXTVAL, '케냐', 6);
INSERT INTO country values(country_idx_seq.NEXTVAL, '에티오피아', 6);
INSERT INTO country values(country_idx_seq.NEXTVAL, '모리셔스', 6);

SELECT * FROM COUNTRY;


--한국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '카스', 4.5, '라거', 1);
--중국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '칭따오', 5.0, '라거', 2);
--일본
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '아사히', 5.0, '페일 라거', 3);
--베트남
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '비아 하노이', 4.2, '라거', 4);
--태국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '창 비어', 5.2, '라거', 5);
--라오스
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '비어라오', 5.0, '라거', 6);

--독일
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '벡스', 5.0, '라거', 1);
--체코
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '필스너 우르겔', 4.4, '라거', 2);
--영국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '뉴캐슬 브라운 에일', 4.7, '브라운 에일', 3);
--벨기에
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '스텔라 아르투아', 5.2, '라거', 4);
--네덜란드
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '하이네켄', 5.0, '라거', 5);
--덴마크
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '칼스버그', 5.0, '라거', 6);

--뉴질랜드
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '엔지 퓨어', 5.0, '페일 라거', 1);
--파푸아뉴기니
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, ' ', 4.4, '라거', 2);
--호주
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '빅토리아 비터', 4.6, '비터 라거', 3);
--팔라우
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '레드 루스터', 5.0, '라거', 4);
--투발루
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 5);
--솔로몬제도
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 6);

--미국
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 1);
--캐나다
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.4, '라거', 2);
--멕시코
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.7, '브라운 에일', 3);
--과테말라
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.2, '라거', 4);
--쿠바
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 5);
--자메이카
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 6);

--아르헨티나
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 1);
--에콰도르
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.4, '라거', 2);
--브라질
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.7, '브라운 에일', 3);
--우루과이
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.2, '라거', 4);
--칠레
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 5);
--페루
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 6);

--모로코
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 1);
--나이지리아
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.4, '라거', 2);
--이집트
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 4.7, '브라운 에일', 3);
--케냐
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.2, '라거', 4);
--에티오피아
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 5);
--모리셔스
INSERT INTO beer VALUES(beer_idx_seq.NEXTVAL, '', 5.0, '라거', 6);



SELECT * FROM BEER;