CREATE TABLE [dbo].[tblFoulsAndMisconduct]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [card_color] NVARCHAR(MAX) NOT NULL, 
    [action_taken_datetime] DATETIME NOT NULL, 
    [player_id] BIGINT NOT NULL, 
    [match_id] BIGINT NOT NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL,
    FOREIGN KEY (created_by) REFERENCES tblUser(id),
	FOREIGN KEY (updated_by) REFERENCES tblUser(id),
	FOREIGN KEY (player_id) REFERENCES tblPlayer(id),
	FOREIGN KEY (match_id) REFERENCES tblMatch(id)
)
