-- 맥주 테이블
DROP TABLE beer cascade constraint;

-- 나라 테이블
DROP TABLE country cascade constraint;

-- 대륙 테이블
DROP TABLE continent cascade constraint;

DROP SEQUENCE continent_idx_seq;
DROP SEQUENCE beer_idx_seq;
DROP SEQUENCE country_idx_seq;

-- 대륙
CREATE TABLE continent (
    continent_idx NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL
);
-- 나라
CREATE TABLE country (
    country_idx NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    continent_idx NUMBER NOT NULL,
    img_path VARCHAR2(30) NOT NULL,
	info VARCHAR2(1000) NOT NULL
);
-- 맥주
CREATE TABLE beer (
    beer_idx NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    alcohol FLOAT NOT NULL,
    kinds VARCHAR2(20) NOT NULL,
    info VARCHAR2(1000) NOT NULL,
    country_idx NUMBER,
    img_path VARCHAR2(30) NOT NULL
);

ALTER TABLE country ADD FOREIGN KEY (continent_idx) REFERENCES continent (continent_idx);
ALTER TABLE  beer ADD FOREIGN KEY (country_idx) REFERENCES country (country_idx);

CREATE SEQUENCE continent_idx_seq START WITH 1 INCREMENT BY 1 MAXVALUE 10000000 CYCLE NOCACHE;
CREATE SEQUENCE country_idx_seq START WITH 1 INCREMENT BY 1 MAXVALUE 10000000 CYCLE NOCACHE;
CREATE SEQUENCE beer_idx_seq START WITH 1 INCREMENT BY 1 MAXVALUE 10000000 CYCLE NOCACHE;