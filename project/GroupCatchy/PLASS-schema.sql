SET XACT_ABORT ON;
BEGIN TRANSACTION;

CREATE TABLE [dbo].[__MigrationHistory] (
    [MigrationId]    NVARCHAR (150)  NOT NULL,
    [ContextKey]     NVARCHAR (300)  NOT NULL,
    [Model]          VARBINARY (MAX) NOT NULL,
    [ProductVersion] NVARCHAR (32)   NOT NULL,
    CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED ([MigrationId] ASC, [ContextKey] ASC)
);

CREATE TABLE [dbo].[AspNetRoles] (
    [Id]   NVARCHAR (128) NOT NULL,
    [Name] NVARCHAR (256) NOT NULL,
    CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[AspNetUsers] (
    [Id]                   NVARCHAR (128) NOT NULL,
    [Email]                NVARCHAR (256) NULL,
    [EmailConfirmed]       BIT            NOT NULL,
    [PasswordHash]         NVARCHAR (MAX) NULL,
    [SecurityStamp]        NVARCHAR (MAX) NULL,
    [PhoneNumber]          NVARCHAR (MAX) NULL,
    [PhoneNumberConfirmed] BIT            NOT NULL,
    [TwoFactorEnabled]     BIT            NOT NULL,
    [LockoutEndDateUtc]    DATETIME       NULL,
    [LockoutEnabled]       BIT            NOT NULL,
    [AccessFailedCount]    INT            NOT NULL,
    [UserName]             NVARCHAR (256) NOT NULL,
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
    [ProviderKey]   NVARCHAR (128) NOT NULL,
    [UserId]        NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED ([LoginProvider] ASC, [ProviderKey] ASC, [UserId] ASC),
    CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [UserId]     NVARCHAR (128) NOT NULL,
    [ClaimType]  NVARCHAR (MAX) NULL,
    [ClaimValue] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);

CREATE TABLE [country] (
  [id] NVARCHAR (128) PRIMARY KEY,
  [name] nvarchar(255),
  [code] nvarchar(50)
);

CREATE TABLE [player] (
  [id] NVARCHAR (128) PRIMARY KEY,
  [date_of_birth] datetime,
  [height_cm] decimal(10, 2),
  [weight_kg] decimal(10, 2),
  [country_id] nvarchar (128),
  [dominant_foot] nvarchar(255),
  [estimated_value] decimal(10, 2),
  [created_at] datetime,
  [updated_at] datetime,
  FOREIGN KEY ([country_id]) REFERENCES [country] ([id]),
);

CREATE TABLE [team] (
  [id] NVARCHAR (128) PRIMARY KEY,
  [name] nvarchar(255)
);

CREATE TABLE [position] (
  [id] NVARCHAR (128) PRIMARY KEY,
  [name] nvarchar(255)
);

CREATE TABLE [transfer_history] (
  [id] NVARCHAR (128) PRIMARY KEY,
  [date] datetime,
  [transfer_fees] decimal(10, 2),
  [contract_value] decimal(10, 2),
  [team_id] nvarchar (128),
  FOREIGN KEY ([team_id]) REFERENCES [team] ([id])
);

CREATE TABLE [match] (
  [id] NVARCHAR (128) PRIMARY KEY,
  [title] nvarchar(255),
  [date] datetime,
  [number_of_goal] int,
  [number_of_assist] int,
  [number_of_yellow_card] int,
  [number_of_red_card] int,
  [position_id] nvarchar (128),
  [jersey_number] nvarchar ,
  [is_captain] bit NOT NULL CHECK ([is_captain] = 0 OR [is_captain] = 1),
  [team_id] nvarchar (128),
  [created_at] datetime,
  [updated_at] datetime,
  FOREIGN KEY ([position_id]) REFERENCES [position] ([id]),
  FOREIGN KEY ([team_id]) REFERENCES [team] ([id])
);

CREATE TABLE [user_has_player] (
  [user_id] NVARCHAR (128) NOT NULL,
  [player_id] nvarchar (128),
  FOREIGN KEY ([user_id]) REFERENCES [AspNetUsers] ([Id]),
  FOREIGN KEY ([player_id]) REFERENCES [player] ([id])
);

CREATE TABLE [player_has_match] (
  [player_id] NVARCHAR (128),
  [match_id] NVARCHAR (128),
  FOREIGN KEY ([player_id]) REFERENCES [player] ([id]),
  FOREIGN KEY ([match_id]) REFERENCES [match] ([id])
);

CREATE TABLE [player_has_transfer_history] (
  [player_id] NVARCHAR (128),
  [transfer_history_id] NVARCHAR (128),
  FOREIGN KEY ([player_id]) REFERENCES [player] ([id]),
  FOREIGN KEY ([transfer_history_id]) REFERENCES [transfer_history] ([id])
);

COMMIT;