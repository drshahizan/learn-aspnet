CREATE TABLE Hosts ( 
	hosts_id INT IDENTITY(1,1) PRIMARY KEY,
	tournament_id CHAR (23)  NOT NULL,
	country_id CHAR (2) NOT NULL,
	FOREIGN KEY (tournament_id) REFERENCES Tournaments (tournament_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (country_id) REFERENCES Countries (country_id) ON DELETE CASCADE ON UPDATE CASCADE
);
