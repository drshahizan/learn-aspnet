USE [294A609E885887728A712CBA9AB61D1A_EARN-ASPNET\PROJECT\GROUPCHARLENE\PROJECT_WORLDCUP\PROJECT_WORLDCUP\APP_DATA\WORLDCUP_QATAR.MDF]
GO
/****** Object:  Table [dbo].[country]    Script Date: 1/31/2023 2:40:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[countryID] [nvarchar](50) NOT NULL,
	[countryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
