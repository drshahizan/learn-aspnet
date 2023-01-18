CREATE TABLE [dbo].[tblUser] (
    [Id]       BIGINT         NOT NULL,
    [email]    NVARCHAR (MAX) NOT NULL,
    [password] NVARCHAR (MAX) NOT NULL,    
    [role]     NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id])
);

