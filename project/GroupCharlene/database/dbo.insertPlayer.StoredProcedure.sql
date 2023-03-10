USE [294A609E885887728A712CBA9AB61D1A_EARN-ASPNET\PROJECT\GROUPCHARLENE\PROJECT_WORLDCUP\PROJECT_WORLDCUP\APP_DATA\WORLDCUP_QATAR.MDF]
GO
/****** Object:  StoredProcedure [dbo].[insertPlayer]    Script Date: 1/31/2023 2:40:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertPlayer]
	@fullName nvarchar(150),
	@teamCountry nvarchar(50),
	@jerseyNum int,
	@position nvarchar(50),
	@Club varchar(50),
	@photo nvarchar(MAX) = NULL
AS
	INSERT INTO teamPlayer(fullName, teamCountry, jerseyNum, position, Club, photo) values(@fullName, @teamCountry, @jerseyNum, @position, @Club, @photo)
RETURN
GO
