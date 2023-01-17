CREATE TABLE [transfer_history] (
  [id] int PRIMARY KEY,
  [date] date,
  [transfer_fees] double,
  [contract_value] double,
  [team_id] int
)
GO

CREATE TABLE [player_has_transfer_history] (
  [player_id] int,
  [transfer_history_id] int
)
GO

CREATE TABLE [player] (
  [id] int PRIMARY KEY,
  [date_of_birth] date,
  [height_cm] double,
  [weight_kg] double,
  [nationality] string,
  [dominant_foot] string,
  [estimated_value] double,
  [created_at] timestamp,
  [updated_at] timestamp
)
GO

CREATE TABLE [player_has_match] (
  [player_id] int,
  [match_id] int
)
GO

CREATE TABLE [position] (
  [id] int PRIMARY KEY,
  [name] string
)
GO

CREATE TABLE [match] (
  [id] int PRIMARY KEY,
  [title] string,
  [date] date,
  [number_of_goal] int,
  [number_of_assist] int,
  [number_of_yellow_card] int,
  [number_of_red_card] int,
  [position_id] int,
  [jersey_number] int,
  [is_captain] boolean,
  [team_id] int,
  [created_at] timestamp,
  [updated_at] timestamp
)
GO

CREATE TABLE [team] (
  [id] int PRIMARY KEY,
  [name] string
)
GO

CREATE TABLE [user] (
  [id] int PRIMARY KEY,
  [email] string,
  [password] string,
  [role_id] int
)
GO

CREATE TABLE [user_has_player] (
  [user_id] int,
  [player_id] int
)
GO

CREATE TABLE [role] (
  [id] int PRIMARY KEY,
  [name] string
)
GO

ALTER TABLE [transfer_history] ADD FOREIGN KEY ([team_id]) REFERENCES [team] ([id])
GO

ALTER TABLE [player_has_transfer_history] ADD FOREIGN KEY ([player_id]) REFERENCES [player] ([id])
GO

ALTER TABLE [player_has_transfer_history] ADD FOREIGN KEY ([transfer_history_id]) REFERENCES [transfer_history] ([id])
GO

ALTER TABLE [player_has_match] ADD FOREIGN KEY ([player_id]) REFERENCES [player] ([id])
GO

ALTER TABLE [player_has_match] ADD FOREIGN KEY ([match_id]) REFERENCES [match] ([id])
GO

ALTER TABLE [match] ADD FOREIGN KEY ([position_id]) REFERENCES [position] ([id])
GO

ALTER TABLE [match] ADD FOREIGN KEY ([team_id]) REFERENCES [team] ([id])
GO

ALTER TABLE [user] ADD FOREIGN KEY ([role_id]) REFERENCES [role] ([id])
GO

ALTER TABLE [user_has_player] ADD FOREIGN KEY ([user_id]) REFERENCES [user] ([id])
GO

ALTER TABLE [user_has_player] ADD FOREIGN KEY ([player_id]) REFERENCES [player] ([id])
GO
