CREATE TABLE [dbo].[tblUser] (
    [Id]       BIGINT         NOT NULL,
    [email]    NVARCHAR (MAX) NOT NULL,
    [password] NVARCHAR (MAX) NOT NULL,    
    [role]     NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id])
);

CREATE TABLE [dbo].[tblTeam]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [name] BIGINT NOT NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL,
	FOREIGN KEY (created_by) REFERENCES tblUser(id),
	FOREIGN KEY (updated_by) REFERENCES tblUser(id)
)
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
CREATE TABLE [dbo].[tblPost]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [title] NVARCHAR(MAX) NOT NULL, 
    [content] NVARCHAR(MAX) NOT NULL,  
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL,
    [status] NVARCHAR(50) NULL, 
    [published_date] DATETIME NOT NULL,
	FOREIGN KEY (created_by) REFERENCES tblUser(id),
	FOREIGN KEY (updated_by) REFERENCES tblUser(id)
)
