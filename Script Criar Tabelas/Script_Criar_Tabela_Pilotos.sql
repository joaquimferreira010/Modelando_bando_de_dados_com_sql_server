USE [EstrelaDaMorte]
GO

/****** Object:  Table [dbo].[Pilotos]    Script Date: 07/10/2021 22:42:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pilotos](
	[IdPiloto] [int] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[AnoNascimento] [varchar](10) NOT NULL,
	[IdPlaneta] [int] NOT NULL,
 CONSTRAINT [PK_Pilotos] PRIMARY KEY CLUSTERED 
(
	[IdPiloto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Pilotos]  WITH CHECK ADD  CONSTRAINT [FK_Pilotos_Planetas] FOREIGN KEY([IdPlaneta])
REFERENCES [dbo].[Planetas] ([IdPlaneta])
GO

ALTER TABLE [dbo].[Pilotos] CHECK CONSTRAINT [FK_Pilotos_Planetas]
GO


