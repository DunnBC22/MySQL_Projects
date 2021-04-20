/*
	This Query Creates the Table restaurants within the Restaurant Database
*/

USE restaurant;

CREATE TABLE IF NOT EXISTS top250(
    ranking INT NOT NULL,
    Restaurant VARCHAR(40) NOT NULL,
    Sales INT,
    YOY_Sales DOUBLE,
    Units INT,
    YOY_Units DOUBLE,
    Segment_Category VARCHAR(50),
    PRIMARY KEY (ranking)
);
