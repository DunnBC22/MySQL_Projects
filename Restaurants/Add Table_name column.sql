ALTER TABLE Future50
ADD COLUMN name_of_table varchar(9)
AS ('Future50') STORED;

ALTER TABLE independence100
ADD COLUMN name_of_table varchar(16)
AS ('independence100') STORED;

ALTER TABLE Top250
ADD COLUMN name_of_table varchar(7)
AS ('Top250') STORED;