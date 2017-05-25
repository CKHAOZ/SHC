USE [SHC]
GO

/****** Object:  Table [dbo].[City]    Script Date: 25/05/2017 4:58:57 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[City](
	[idCit] [int] IDENTITY(1,1) NOT NULL,
	[idDep] [int] NOT NULL,
	[citName] [varchar](120) NOT NULL,
	[citCode] [varchar](12) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[idCit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_City_idDep] FOREIGN KEY([idDep])
REFERENCES [dbo].[Department] ([idDep])
GO

ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_City_idDep]
GO

