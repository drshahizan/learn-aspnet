USE [294A609E885887728A712CBA9AB61D1A_EARN-ASPNET\PROJECT\GROUPCHARLENE\PROJECT_WORLDCUP\PROJECT_WORLDCUP\APP_DATA\WORLDCUP_QATAR.MDF]
GO
/****** Object:  StoredProcedure [dbo].[insertNews]    Script Date: 1/31/2023 2:40:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertNews]
	@news nvarchar(MAX),
	@article nvarchar(MAX)
AS
	INSERT INTO newsArticle(news, article) values(@news, @article)
RETURN
GO
