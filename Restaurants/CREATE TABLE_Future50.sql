USE restaurant;
CREATE TABLE Future50(
	ranking INT NOT NULL,
    Restaurant VARCHAR(50) NOT NULL,
    Location VARCHAR(50) NOT NULL,
    Sales INT NOT NULL,
    YOY_Sales DECIMAL(5,2) NOT NULL,
    Units INT NOT NULL,
    YOY_Units DECIMAL(5,2) NOT NULL,
    Unit_Volume INT NOT NULL,
    Franchising VARCHAR(3) NOT NULL,
    PRIMARY KEY(ranking)
)