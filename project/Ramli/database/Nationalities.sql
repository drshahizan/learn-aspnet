CREATE TABLE Nationalities (
	nationality_id INT PRIMARY KEY,
	country_id CHAR (2) NOT NULL,
	FOREIGN KEY (country_id) REFERENCES Countries (country_id) ON DELETE CASCADE ON UPDATE CASCADE
);
