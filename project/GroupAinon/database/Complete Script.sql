
CREATE TABLE [dbo].[tblUser] (
    [Id]       BIGINT         NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [email]    NVARCHAR (MAX) NOT NULL,
    [password] NVARCHAR (MAX) NOT NULL,    
    [role]     NVARCHAR (MAX) NOT NULL,
);

CREATE TABLE [dbo].[tblTeam]
(
	[Id] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [name] NVARCHAR (MAX) NOT NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL
)
CREATE TABLE [dbo].[tblPlayer]
(
	[Id] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [name] NVARCHAR (MAX) NOT NULL, 
    [jercy_no] INT NOT NULL, 
    [team_id] BIGINT NOT NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL
)

CREATE TABLE [dbo].[tblMatch]
(
	[Id] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [team_a_id] BIGINT NOT NULL, 
    [team_a_score] INT NOT NULL, 
    [team_b_id] BIGINT NOT NULL, 
    [team_b_score] INT NULL, 
    [match_datetime] DATETIME NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL
)
CREATE TABLE [dbo].[tblFoulsAndMisconduct]
(
	[Id] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [card_color] NVARCHAR(MAX) NOT NULL, 
    [action_taken_datetime] DATETIME NOT NULL, 
    [player_id] BIGINT NOT NULL, 
    [match_id] BIGINT NOT NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL
)
CREATE TABLE [dbo].[tblPost]
(
	[Id] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [title] NVARCHAR(MAX) NOT NULL, 
    [content] NVARCHAR(MAX) NOT NULL,  
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL,
    [status] NVARCHAR(50) NULL, 
    [published_date] DATETIME NOT NULL,
	[match_id_id] BIGINT NOT NULL
)


--SEED user record
INSERT INTO tblUser
VALUES ('admin@worldcuponthego.my', 'password', 'admin');
INSERT INTO tblUser
VALUES ('subscriber@worldcuponthego.my', 'password', 'subscriber');

