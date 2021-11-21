.read data.sql


CREATE TABLE bluedog AS
  SELECT color,pet from students where color = 'blue' and pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color,pet,song from students where color = 'blue' and pet = 'dog';


CREATE TABLE smallest_int AS
  SELECT time,smallest from students where smallest > 2 order by smallest limit 20;


CREATE TABLE matchmaker AS
  SELECT a.pet,b.song,a.color,b.color from students as a,students as b where a.pet = b.pet and a.song = b.song and a.time != b.time;


CREATE TABLE sevens AS
  SELECT a.seven from students as a where a.number = 7 and a.time in ( select time from numbers where `7` = 'True');

