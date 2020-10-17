USE import_data

CREATE TABLE netflix_titles(
show_id INT PRIMARY KEY,
type_movie ENUM ("Movie","Tv Show"),
title VARCHAR (80),
director VARCHAR (30),
casting TEXT,
country VARCHAR (50),
date_added VARCHAR (30),
release_year YEAR,
rating VARCHAR (10),
duration VARCHAR (10),
listed_in VARCHAR (100),
description_movie TEXT
);

DESCRIBE netflix_titles;

SELECT COUNT(title) FROM netflix_titles;

SELECT*FROM netflix_titles WHERE duration ='90 min';

SELECT*FROM netflix_titles WHERE country="thailand";

SELECT*FROM netflix_titles WHERE release_year > 2015;
