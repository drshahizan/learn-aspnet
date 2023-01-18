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
