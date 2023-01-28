CREATE TABLE winners( 
	winners_id INT PRIMARY KEY,
	year_id INT NOT NULL,
	champion_country VARCHAR (40) NOT NULL,
	runner_up_country VARCHAR (40) NOT NULL, 
	third_place_country VARCHAR(40) NOT NULL,
	goals INT DEFAULT NULL,
	FOREIGN KEY (year_id) REFERENCES Match_year (year_id) ON DELETE CASCADE ON UPDATE CASCADE
);
