CREATE TABLE [dbo].[tblPlayer]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [name] BIGINT NOT NULL, 
    [jercy_no] INT NOT NULL, 
    [team_id] BIGINT NOT NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL,
	FOREIGN KEY (created_by) REFERENCES tblUser(id),
	FOREIGN KEY (updated_by) REFERENCES tblUser(id),
	FOREIGN KEY (team_id) REFERENCES tblTeam(id)
)

