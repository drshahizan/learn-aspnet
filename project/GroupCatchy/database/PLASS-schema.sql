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
    [name] NVARCHAR (256) NOT NULL,
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
    [Username]             NVARCHAR (256) NOT NULL,
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

CREATE TABLE [dbo].[country] (
    [id]   INT            IDENTITY (1, 1) NOT NULL,
    [name] NVARCHAR (255) NULL,
    [code] NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [player] (
  [id] INT IDENTITY (1, 1) NOT NULL,
  [date_of_birth] datetime,
  [height_cm] decimal(10, 2),
  [weight_kg] decimal(10, 2),
  [country_id] INT,
  [dominant_foot] nvarchar(255),
  [estimated_value] decimal(10, 2),
  [created_at] datetime,
  [updated_at] datetime,
  FOREIGN KEY ([country_id]) REFERENCES [country] ([id]),
  PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [team] (
  [id] INT IDENTITY (1, 1) NOT NULL,
  [name] nvarchar(255),
  PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [position] (
  [id] INT IDENTITY (1, 1) NOT NULL,
  [name] nvarchar(255),
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
  [jersey_number] nvarchar ,
  [is_captain] bit NOT NULL CHECK ([is_captain] = 0 OR [is_captain] = 1),
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

INSERT INTO country (name, code) VALUES ('Afghanistan', 'AF');
INSERT INTO country (name, code) VALUES ('Afghanistan', 'AF');
INSERT INTO country (name, code) VALUES ('Albania', 'AL');
INSERT INTO country (name, code) VALUES ('Albania', 'AL');
INSERT INTO country (name, code) VALUES ('Algeria', 'DZ');
INSERT INTO country (name, code) VALUES ('Algeria', 'DZ');
INSERT INTO country (name, code) VALUES ('American Samoa', 'AS');
INSERT INTO country (name, code) VALUES ('American Samoa', 'AS');
INSERT INTO country (name, code) VALUES ('Andorra', 'AD');
INSERT INTO country (name, code) VALUES ('Angola', 'AO');
INSERT INTO country (name, code) VALUES ('Anguilla', 'AI');
INSERT INTO country (name, code) VALUES ('Antarctica', 'AQ');
INSERT INTO country (name, code) VALUES ('Antigua and Barbuda', 'AG');
INSERT INTO country (name, code) VALUES ('Argentina', 'AR');
INSERT INTO country (name, code) VALUES ('Armenia', 'AM');
INSERT INTO country (name, code) VALUES ('Aruba', 'AW');
INSERT INTO country (name, code) VALUES ('Australia', 'AU');
INSERT INTO country (name, code) VALUES ('Austria', 'AT');
INSERT INTO country (name, code) VALUES ('Azerbaijan', 'AZ');
INSERT INTO country (name, code) VALUES ('Bahamas', 'BS');
INSERT INTO country (name, code) VALUES ('Bahrain', 'BH');
INSERT INTO country (name, code) VALUES ('Bangladesh', 'BD');
INSERT INTO country (name, code) VALUES ('Barbados', 'BB');
INSERT INTO country (name, code) VALUES ('Belarus', 'BY');
INSERT INTO country (name, code) VALUES ('Belgium', 'BE');
INSERT INTO country (name, code) VALUES ('Belize', 'BZ');
INSERT INTO country (name, code) VALUES ('Benin', 'BJ');
INSERT INTO country (name, code) VALUES ('Bermuda', 'BM');
INSERT INTO country (name, code) VALUES ('Bhutan', 'BT');
INSERT INTO country (name, code) VALUES ('Bosnia and Herzegovina', 'BA');
INSERT INTO country (name, code) VALUES ('Botswana', 'BW');
INSERT INTO country (name, code) VALUES ('Bouvet Island', 'BV');
INSERT INTO country (name, code) VALUES ('Brazil', 'BR');
INSERT INTO country (name, code) VALUES ('British Indian Ocean Territory', 'IO');
INSERT INTO country (name, code) VALUES ('Brunei Darussalam', 'BN');
INSERT INTO country (name, code) VALUES ('Bulgaria', 'BG');
INSERT INTO country (name, code) VALUES ('Burkina Faso', 'BF');
INSERT INTO country (name, code) VALUES ('Burundi', 'BI');
INSERT INTO country (name, code) VALUES ('Cambodia', 'KH');
INSERT INTO country (name, code) VALUES ('Cameroon', 'CM');
INSERT INTO country (name, code) VALUES ('Canada', 'CA');
INSERT INTO country (name, code) VALUES ('Cape Verde', 'CV');
INSERT INTO country (name, code) VALUES ('Cayman Islands', 'KY');
INSERT INTO country (name, code) VALUES ('Central African Republic', 'CF');
INSERT INTO country (name, code) VALUES ('Chad', 'TD');
INSERT INTO country (name, code) VALUES ('Chile', 'CL');
INSERT INTO country (name, code) VALUES ('China', 'CN');
INSERT INTO country (name, code) VALUES ('Christmas Island', 'CX');
INSERT INTO country (name, code) VALUES ('Cocos (Keeling) Islands', 'CC');
INSERT INTO country (name, code) VALUES ('Colombia', 'CO');
INSERT INTO country (name, code) VALUES ('Comoros', 'KM');
INSERT INTO country (name, code) VALUES ('Congo', 'CG');
INSERT INTO country (name, code) VALUES ('Cook Islands', 'CK');
INSERT INTO country (name, code) VALUES ('Costa Rica', 'CR');
INSERT INTO country (name, code) VALUES ('Croatia', 'HR');
INSERT INTO country (name, code) VALUES ('Cuba', 'CU');
INSERT INTO country (name, code) VALUES ('Cyprus', 'CY');
INSERT INTO country (name, code) VALUES ('Czech Republic', 'CZ');
INSERT INTO country (name, code) VALUES ('Denmark', 'DK');
INSERT INTO country (name, code) VALUES ('Djibouti', 'DJ');
INSERT INTO country (name, code) VALUES ('Dominica', 'DM');
INSERT INTO country (name, code) VALUES ('Dominican Republic', 'DO');
INSERT INTO country (name, code) VALUES ('Ecuador', 'EC');
INSERT INTO country (name, code) VALUES ('Egypt', 'EG');
INSERT INTO country (name, code) VALUES ('El Salvador', 'SV');
INSERT INTO country (name, code) VALUES ('Equatorial Guinea', 'GQ');
INSERT INTO country (name, code) VALUES ('Eritrea', 'ER');
INSERT INTO country (name, code) VALUES ('Estonia', 'EE');
INSERT INTO country (name, code) VALUES ('Ethiopia', 'ET');
INSERT INTO country (name, code) VALUES ('Falkland Islands (Malvinas)' ,'FK');
INSERT INTO country (name, code) VALUES ('Faroe Islands', 'FO');
INSERT INTO country (name, code) VALUES ('Fiji', 'FJ');
INSERT INTO country (name, code) VALUES ('Finland', 'FI');
INSERT INTO country (name, code) VALUES ('France', 'FR');
INSERT INTO country (name, code) VALUES ('French Guiana', 'GF');
INSERT INTO country (name, code) VALUES ('French Polynesia', 'PF');
INSERT INTO country (name, code) VALUES ('French Southern Territories', 'TF');
INSERT INTO country (name, code) VALUES ('Gabon', 'GA');
INSERT INTO country (name, code) VALUES ('Gambia', 'GM');
INSERT INTO country (name, code) VALUES ('Georgia', 'GE');
INSERT INTO country (name, code) VALUES ('Germany', 'DE');
INSERT INTO country (name, code) VALUES ('Ghana', 'GH');
INSERT INTO country (name, code) VALUES ('Gibraltar', 'GI');
INSERT INTO country (name, code) VALUES ('Greece', 'GR');
INSERT INTO country (name, code) VALUES ('Greenland', 'GL');
INSERT INTO country (name, code) VALUES ('Grenada', 'GD');
INSERT INTO country (name, code) VALUES ('Guadeloupe', 'GP');
INSERT INTO country (name, code) VALUES ('Guam', 'GU');
INSERT INTO country (name, code) VALUES ('Guatemala', 'GT');
INSERT INTO country (name, code) VALUES ('Guernsey', 'GG');
INSERT INTO country (name, code) VALUES ('Guinea', 'GN');
INSERT INTO country (name, code) VALUES ('Guinea-Bissau', 'GW');
INSERT INTO country (name, code) VALUES ('Guyana', 'GY');
INSERT INTO country (name, code) VALUES ('Haiti', 'HT');
INSERT INTO country (name, code) VALUES ('Heard Island and McDonald Islands', 'HM');
INSERT INTO country (name, code) VALUES ('Holy See (Vatican City State)' ,'VA');
INSERT INTO country (name, code) VALUES ('Honduras', 'HN');
INSERT INTO country (name, code) VALUES ('Hong Kong', 'HK');
INSERT INTO country (name, code) VALUES ('Hungary', 'HU');
INSERT INTO country (name, code) VALUES ('Iceland', 'IS');
INSERT INTO country (name, code) VALUES ('India', 'IN');
INSERT INTO country (name, code) VALUES ('Indonesia', 'ID');
INSERT INTO country (name, code) VALUES ('Iraq', 'IQ');
INSERT INTO country (name, code) VALUES ('Ireland', 'IE');
INSERT INTO country (name, code) VALUES ('Isle of Man', 'IM');
INSERT INTO country (name, code) VALUES ('Israel', 'IL');
INSERT INTO country (name, code) VALUES ('Italy', 'IT');
INSERT INTO country (name, code) VALUES ('Jamaica', 'JM');
INSERT INTO country (name, code) VALUES ('Japan', 'JP');
INSERT INTO country (name, code) VALUES ('Jersey', 'JE');
INSERT INTO country (name, code) VALUES ('Jordan', 'JO');
INSERT INTO country (name, code) VALUES ('Kazakhstan', 'KZ');
INSERT INTO country (name, code) VALUES ('Kenya', 'KE');
INSERT INTO country (name, code) VALUES ('Kiribati', 'KI');
INSERT INTO country (name, code) VALUES ('Kuwait', 'KW');
INSERT INTO country (name, code) VALUES ('Kyrgyzstan', 'KG');
INSERT INTO country (name, code) VALUES ('Lao Peoples Democratic Republic', 'LA');
INSERT INTO country (name, code) VALUES ('Latvia', 'LV');
INSERT INTO country (name, code) VALUES ('Lebanon', 'LB');
INSERT INTO country (name, code) VALUES ('Lesotho', 'LS');
INSERT INTO country (name, code) VALUES ('Liberia', 'LR');
INSERT INTO country (name, code) VALUES ('Libya', 'LY');
INSERT INTO country (name, code) VALUES ('Liechtenstein', 'LI');
INSERT INTO country (name, code) VALUES ('Lithuania', 'LT');
INSERT INTO country (name, code) VALUES ('Luxembourg', 'LU');
INSERT INTO country (name, code) VALUES ('Macao', 'MO');
INSERT INTO country (name, code) VALUES ('Madagascar', 'MG');
INSERT INTO country (name, code) VALUES ('Malawi', 'MW');
INSERT INTO country (name, code) VALUES ('Malaysia', 'MY');
INSERT INTO country (name, code) VALUES ('Maldives', 'MV');
INSERT INTO country (name, code) VALUES ('Mali', 'ML');
INSERT INTO country (name, code) VALUES ('Malta', 'MT');
INSERT INTO country (name, code) VALUES ('Marshall Islands', 'MH');
INSERT INTO country (name, code) VALUES ('Martinique', 'MQ');
INSERT INTO country (name, code) VALUES ('Mauritania', 'MR');
INSERT INTO country (name, code) VALUES ('Mauritius', 'MU');
INSERT INTO country (name, code) VALUES ('Mayotte', 'YT');
INSERT INTO country (name, code) VALUES ('Mexico', 'MX');
INSERT INTO country (name, code) VALUES ('Monaco', 'MC');
INSERT INTO country (name, code) VALUES ('Mongolia', 'MN');
INSERT INTO country (name, code) VALUES ('Montenegro', 'ME');
INSERT INTO country (name, code) VALUES ('Montserrat', 'MS');
INSERT INTO country (name, code) VALUES ('Morocco', 'MA');
INSERT INTO country (name, code) VALUES ('Mozambique', 'MZ');
INSERT INTO country (name, code) VALUES ('Myanmar', 'MM');
INSERT INTO country (name, code) VALUES ('Namibia', 'NA');
INSERT INTO country (name, code) VALUES ('Nauru', 'NR');
INSERT INTO country (name, code) VALUES ('Nepal', 'NP');
INSERT INTO country (name, code) VALUES ('Netherlands', 'NL');
INSERT INTO country (name, code) VALUES ('New Caledonia', 'NC');
INSERT INTO country (name, code) VALUES ('New Zealand', 'NZ');
INSERT INTO country (name, code) VALUES ('Nicaragua', 'NI');
INSERT INTO country (name, code) VALUES ('Niger', 'NE');
INSERT INTO country (name, code) VALUES ('Nigeria', 'NG');
INSERT INTO country (name, code) VALUES ('Niue', 'NU');
INSERT INTO country (name, code) VALUES ('Norfolk Island', 'NF');
INSERT INTO country (name, code) VALUES ('Northern Mariana Islands', 'MP');
INSERT INTO country (name, code) VALUES ('Norway', 'NO');
INSERT INTO country (name, code) VALUES ('Oman', 'OM');
INSERT INTO country (name, code) VALUES ('Pakistan', 'PK');
INSERT INTO country (name, code) VALUES ('Palau', 'PW');
INSERT INTO country (name, code) VALUES ('Panama', 'PA');
INSERT INTO country (name, code) VALUES ('Papua New Guinea', 'PG');
INSERT INTO country (name, code) VALUES ('Paraguay', 'PY');
INSERT INTO country (name, code) VALUES ('Peru', 'PE');
INSERT INTO country (name, code) VALUES ('Philippines', 'PH');
INSERT INTO country (name, code) VALUES ('Pitcairn', 'PN');
INSERT INTO country (name, code) VALUES ('Poland', 'PL');
INSERT INTO country (name, code) VALUES ('Portugal', 'PT');
INSERT INTO country (name, code) VALUES ('Puerto Rico', 'PR');
INSERT INTO country (name, code) VALUES ('Qatar', 'QA');
INSERT INTO country (name, code) VALUES ('Romania', 'RO');
INSERT INTO country (name, code) VALUES ('Russian Federation', 'RU');
INSERT INTO country (name, code) VALUES ('Rwanda', 'RW');
INSERT INTO country (name, code) VALUES ('Saint Kitts and Nevis', 'KN');
INSERT INTO country (name, code) VALUES ('Saint Lucia', 'LC');
INSERT INTO country (name, code) VALUES ('Saint Martin (French part)' ,'MF');
INSERT INTO country (name, code) VALUES ('Saint Pierre and Miquelon', 'PM');
INSERT INTO country (name, code) VALUES ('Saint Vincent and the Grenadines', 'VC');
INSERT INTO country (name, code) VALUES ('Samoa', 'WS');
INSERT INTO country (name, code) VALUES ('San Marino', 'SM');
INSERT INTO country (name, code) VALUES ('Sao Tome and Principe', 'ST');
INSERT INTO country (name, code) VALUES ('Saudi Arabia', 'SA');
INSERT INTO country (name, code) VALUES ('Senegal', 'SN');
INSERT INTO country (name, code) VALUES ('Serbia', 'RS');
INSERT INTO country (name, code) VALUES ('Seychelles', 'SC');
INSERT INTO country (name, code) VALUES ('Sierra Leone', 'SL');
INSERT INTO country (name, code) VALUES ('Singapore', 'SG');
INSERT INTO country (name, code) VALUES ('Sint Maarten (Dutch part)' ,'SX');
INSERT INTO country (name, code) VALUES ('Slovakia', 'SK');
INSERT INTO country (name, code) VALUES ('Slovenia', 'SI');
INSERT INTO country (name, code) VALUES ('Solomon Islands', 'SB');
INSERT INTO country (name, code) VALUES ('Somalia', 'SO');
INSERT INTO country (name, code) VALUES ('South Africa', 'ZA');
INSERT INTO country (name, code) VALUES ('South Georgia and the South Sandwich Islands', 'GS');
INSERT INTO country (name, code) VALUES ('South Sudan', 'SS');
INSERT INTO country (name, code) VALUES ('Spain', 'ES');
INSERT INTO country (name, code) VALUES ('Sri Lanka', 'LK');
INSERT INTO country (name, code) VALUES ('Sudan', 'SD');
INSERT INTO country (name, code) VALUES ('Suriname', 'SR');
INSERT INTO country (name, code) VALUES ('Svalbard and Jan Mayen', 'SJ');
INSERT INTO country (name, code) VALUES ('Swaziland', 'SZ');
INSERT INTO country (name, code) VALUES ('Sweden', 'SE');
INSERT INTO country (name, code) VALUES ('Switzerland', 'CH');
INSERT INTO country (name, code) VALUES ('Syrian Arab Republic', 'SY');
INSERT INTO country (name, code) VALUES ('Tajikistan', 'TJ');
INSERT INTO country (name, code) VALUES ('Thailand', 'TH');
INSERT INTO country (name, code) VALUES ('Timor-Leste', 'TL');
INSERT INTO country (name, code) VALUES ('Togo', 'TG');
INSERT INTO country (name, code) VALUES ('Tokelau', 'TK');
INSERT INTO country (name, code) VALUES ('Tonga', 'TO');
INSERT INTO country (name, code) VALUES ('Trinidad and Tobago', 'TT');
INSERT INTO country (name, code) VALUES ('Tunisia', 'TN');
INSERT INTO country (name, code) VALUES ('Turkey', 'TR');
INSERT INTO country (name, code) VALUES ('Turkmenistan', 'TM');
INSERT INTO country (name, code) VALUES ('Turks and Caicos Islands', 'TC');
INSERT INTO country (name, code) VALUES ('Tuvalu', 'TV');
INSERT INTO country (name, code) VALUES ('Uganda', 'UG');
INSERT INTO country (name, code) VALUES ('Ukraine', 'UA');
INSERT INTO country (name, code) VALUES ('United Arab Emirates', 'AE');
INSERT INTO country (name, code) VALUES ('United Kingdom', 'GB');
INSERT INTO country (name, code) VALUES ('United States', 'US');
INSERT INTO country (name, code) VALUES ('United States Minor Outlying Islands', 'UM');
INSERT INTO country (name, code) VALUES ('Uruguay', 'UY');
INSERT INTO country (name, code) VALUES ('Uzbekistan', 'UZ');
INSERT INTO country (name, code) VALUES ('Vanuatu', 'VU');
INSERT INTO country (name, code) VALUES ('Viet Nam', 'VN');
INSERT INTO country (name, code) VALUES ('Wallis and Futuna', 'WF');
INSERT INTO country (name, code) VALUES ('Western Sahara', 'EH');
INSERT INTO country (name, code) VALUES ('Yemen', 'YE');
INSERT INTO country (name, code) VALUES ('Zambia', 'ZM');
INSERT INTO country (name, code) VALUES ('Zimbabwe', 'ZW');


COMMIT;