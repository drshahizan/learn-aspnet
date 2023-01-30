
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
    [team_a] NVARCHAR (MAX) NOT NULL, 
    [team_a_score] INT NOT NULL, 
    [team_b] NVARCHAR (MAX) NOT NULL, 
    [team_b_score] INT NULL, 
    [match_datetime] DATETIME NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL,
	[updated_date] DATETIME NULL, 
    [updated_by] BIGINT NULL
)
CREATE TABLE [dbo].[tblAudit]
(
	[Id] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [Ip_Address] NVARCHAR(MAX) NOT NULL, 
    [Action] NVARCHAR(MAX) NOT NULL, 
    [created_date] DATETIME NULL, 
    [created_by] BIGINT NULL
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
	[match_id_id] BIGINT NOT NULL,
	[file_path] NVARCHAR(MAX) NOT NULL
)


--SEED user record
INSERT INTO tblUser
VALUES ('admin@worldcuponthego.my', 'BbcEZrEm', 'admin');
INSERT INTO tblUser
VALUES ('subscriber@worldcuponthego.my', 'BbcEZrEm', 'subscriber');

