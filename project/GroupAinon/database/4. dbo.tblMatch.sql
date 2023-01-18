CREATE TABLE [dbo].[tblMatch]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [team_a_id] BIGINT NOT NULL, 
    [team_a_score] INT NOT NULL, 
    [team_b_id] BIGINT NOT NULL, 
    [team_b_score] INT NULL, 
    [match_datetime] DATETIME NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL,
	FOREIGN KEY (created_by) REFERENCES tblUser(id),
	FOREIGN KEY (updated_by) REFERENCES tblUser(id),
	FOREIGN KEY (team_a_id) REFERENCES tblTeam(id),
	FOREIGN KEY (team_b_id) REFERENCES tblTeam(id)
)
