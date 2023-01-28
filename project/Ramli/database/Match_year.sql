CREATE TABLE Match_year ( 
	year_id INT PRIMARY KEY,
	tournament_id CHAR (10)  NOT NULL,
	FOREIGN KEY (tournament_id) REFERENCES Tournaments (tournament_id) 
);