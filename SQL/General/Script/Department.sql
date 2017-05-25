USE [SHC]
GO

/****** Object:  Table [dbo].[Department]    Script Date: 25/05/2017 4:00:33 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Department](
	[idDep] [int] IDENTITY(1,1) NOT NULL,
	[idCou] [int] NOT NULL,
	[DepName] [varchar](128) NOT NULL,
	[DepCode] [varchar](12) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[idDep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Country_idCou] FOREIGN KEY([idCou])
REFERENCES [dbo].[Country] ([idCou])
GO

ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Country_idCou]
GO

