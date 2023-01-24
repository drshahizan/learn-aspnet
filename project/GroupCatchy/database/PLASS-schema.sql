SET
  XACT_ABORT ON;

BEGIN TRANSACTION;

CREATE TABLE [dbo].[__MigrationHistory] (
  [MigrationId] NVARCHAR (150) NOT NULL,
  [ContextKey] NVARCHAR (300) NOT NULL,
  [Model] VARBINARY (MAX) NOT NULL,
  [ProductVersion] NVARCHAR (32) NOT NULL,
  CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED ([MigrationId] ASC, [ContextKey] ASC)
);

CREATE TABLE [dbo].[AspNetRoles] (
  [Id] NVARCHAR (128) NOT NULL,
  [name] NVARCHAR (256) NOT NULL,
  CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[AspNetUsers] (
  [Id] NVARCHAR (128) NOT NULL,
  [Email] NVARCHAR (256) NULL,
  [EmailConfirmed] BIT NOT NULL,
  [PasswordHash] NVARCHAR (MAX) NULL,
  [SecurityStamp] NVARCHAR (MAX) NULL,
  [PhoneNumber] NVARCHAR (MAX) NULL,
  [PhoneNumberConfirmed] BIT NOT NULL,
  [TwoFactorEnabled] BIT NOT NULL,
  [LockoutEndDateUtc] DATETIME NULL,
  [LockoutEnabled] BIT NOT NULL,
  [AccessFailedCount] INT NOT NULL,
  [Username] NVARCHAR (256) NOT NULL,
  CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[AspNetUserRoles] (
  [UserId] NVARCHAR (128) NOT NULL,
  [RoleId] NVARCHAR (128) NOT NULL,
  CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED ([UserId] ASC, [RoleId] ASC),
  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE,
  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[AspNetUserLogins] (
  [LoginProvider] NVARCHAR (128) NOT NULL,
  [ProviderKey] NVARCHAR (128) NOT NULL,
  [UserId] NVARCHAR (128) NOT NULL,
  CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED (
    [LoginProvider] ASC,
    [ProviderKey] ASC,
    [UserId] ASC
  ),
  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[AspNetUserClaims] (
  [Id] INT IDENTITY (1, 1) NOT NULL,
  [UserId] NVARCHAR (128) NOT NULL,
  [ClaimType] NVARCHAR (MAX) NULL,
  [ClaimValue] NVARCHAR (MAX) NULL,
  CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED ([Id] ASC),
  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[country] (
  [id] INT IDENTITY (1, 1) NOT NULL,
  [name] NVARCHAR (255) NULL,
  [code] NVARCHAR (50) NULL,
  [fifaQualified] bit NOT NULL CHECK (
    [fifaQualified] = 0
    OR [fifaQualified] = 1
  ),
  PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[player] (
    [id]              INT             IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (255)   NULL,
    [date_of_birth]   DATE            NULL,
    [height_cm]       DECIMAL (10, 2) NULL,
    [weight_kg]       DECIMAL (10, 2) NULL,
    [country_id]      INT             NULL,
    [dominant_foot]   NVARCHAR (255)  NULL,
    [estimated_value] DECIMAL (11)    NULL,
    [created_at]      DATETIME        NULL,
    [updated_at]      DATETIME        DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([country_id]) REFERENCES [dbo].[country] ([id])
);

CREATE TABLE [team] (
  [id] INT IDENTITY (1, 1) NOT NULL,
  [name] nvarchar(255),
  PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [position] (
  [id] INT IDENTITY (1, 1) NOT NULL,
  [name] nvarchar(255),
  [category] NVARCHAR (50)  NULL,
  PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [transfer_history] (
  [id] INT IDENTITY (1, 1) NOT NULL,
  [date] datetime,
  [transfer_fees] decimal(10, 2),
  [contract_value] decimal(10, 2),
  [team_id] INT,
  FOREIGN KEY ([team_id]) REFERENCES [team] ([id]),
  PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [match] (
  [id] INT IDENTITY (1, 1) NOT NULL,
  [title] nvarchar(255),
  [date] datetime,
  [number_of_goal] int,
  [number_of_assist] int,
  [number_of_yellow_card] int,
  [number_of_red_card] int,
  [position_id] INT,
  [jersey_number] nvarchar,
  [is_captain] bit NOT NULL CHECK (
    [is_captain] = 0
    OR [is_captain] = 1
  ),
  [team_id] INT,
  [created_at] datetime,
  [updated_at] datetime,
  FOREIGN KEY ([position_id]) REFERENCES [position] ([id]),
  FOREIGN KEY ([team_id]) REFERENCES [team] ([id]),
  PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [player_has_match] (
  [player_id] INT,
  [match_id] INT,
  FOREIGN KEY ([player_id]) REFERENCES [player] ([id]),
  FOREIGN KEY ([match_id]) REFERENCES [match] ([id])
);

CREATE TABLE [player_has_transfer_history] (
  [player_id] INT,
  [transfer_history_id] INT,
  FOREIGN KEY ([player_id]) REFERENCES [player] ([id]),
  FOREIGN KEY ([transfer_history_id]) REFERENCES [transfer_history] ([id])
);

COMMIT;