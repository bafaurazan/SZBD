-- This script is creating a table for New York Times Articles Dataset
-- Before running it, pre-process the data with python scripts

CREATE TABLE nyt_articles (
    article_id          VARCHAR2(100) PRIMARY KEY,
    web_url             VARCHAR2(500),
    print_section       VARCHAR2(10),
    print_page          NUMBER,
    source              VARCHAR2(100),
    pub_date            VARCHAR2(50),  -- zamiast TIMESTAMP
    document_type       VARCHAR2(50),
    news_desk           VARCHAR2(100),
    section_name        VARCHAR2(100),
    type_of_material    VARCHAR2(100),
    word_count          NUMBER,
    uri                 VARCHAR2(500),
    subsection_name     VARCHAR2(100)
);



SELECT TABLE_NAME, TABLESPACE_NAME FROM USER_TABLES;

SELECT COUNT (*) AS total_rows FROM nyt_articles;


SHOW CON_NAME;


-- In case of running the script again

-- DROP TABLE nyt_articles;
