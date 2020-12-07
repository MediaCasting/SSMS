CREATE DATABASE MegaCasting
GO


USE MegaCasting
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON

GO
CREATE TABLE [dbo].[BroadcastPartner](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[LastName] [nchar](50) NULL,
	[FirstName] [nchar](50) NULL,
	[Phone] [int] NULL,
	[Email] [nchar](50) NULL,
	[Street] [nchar](70) NULL,
	[IdentifierCity] [bigint] NULL,
 CONSTRAINT [PK_BroadcastPartner] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[City](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[ZipCode] [int] NULL
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[ContractType](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL 
CONSTRAINT [PK_ContractType] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Job](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[IdentifierDomainJob] [bigint] NULL
CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[DomainJob](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL
CONSTRAINT [PK_DomainJob] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[Offer](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Reference] [nvarchar](50) NULL,
	[PublishDateTime] [dateTime] NULL,
	[Duration] [int] NOT NULL,
	[StartContractDate] [datetime] NULL,
	[PostCount] [int] NULL,
	[JobDescription] [nvarchar](2000) NULL,
	[ProfilDescription] [nvarchar](2000) NULL,
	[Street] [nvarchar](70) NULL,
	[IdentifierCity] [bigint] NULL,
	[IdentifierProducer] [bigint] NULL,
	[IdentifierJob] [bigint] NULL,
	[IdentifierContractType] [bigint] NULL
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[Pack](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[Prix] [int] NULL,
	[OfferNumber] [int] NULL,
CONSTRAINT [PK_Pack] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Image](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Format] [char](4) NOT NULL,
	[Libelle] [nvarchar](50) NOT NULL
CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Producer](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IdentifierPack] [bigint] NULL,
	[IdentifierImage] [bigint] NULL
CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Messagerie](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Texte] [nvarchar] (500) NULL,
	[Date] [date] NULL,
	[QuiEcrit] [bit] NULL,
	[IdentifierArtist] [bigint] NOT NULL,
	[IdentifierProducer] [bigint] NOT NULL
CONSTRAINT [PK_Messagerie] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Artist](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Descritpion] [nvarchar] (100) NULL,
	[IdentifierCity] [bigint] NULL,
	[IdentifierImage] [bigint] NULL,
CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[ArtistOffer](
	[Identifier] [bigint] IDENTITY(1,1) NOT NULL,
	[IdentifierArtist] [bigint] NOT NULL,
	[IdentifierOffer] [bigint] NOT NULL
CONSTRAINT [PK_ArtistOffer] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Artist]  WITH CHECK ADD  CONSTRAINT [FK_Artist_City] FOREIGN KEY([IdentifierCity])
REFERENCES [dbo].[City] ([Identifier])
GO


ALTER TABLE [dbo].[Artist] CHECK CONSTRAINT [FK_Artist_City]
GO

ALTER TABLE [dbo].[Artist]  WITH CHECK ADD  CONSTRAINT [FK_Artist_Image] FOREIGN KEY([IdentifierImage])
REFERENCES [dbo].[Image] ([Identifier])
GO

ALTER TABLE [dbo].[Artist] CHECK CONSTRAINT [FK_Artist_Image]
GO

ALTER TABLE [dbo].[Producer]  WITH CHECK ADD  CONSTRAINT [FK_Producer_Pack] FOREIGN KEY([IdentifierPack])
REFERENCES [dbo].[Pack] ([Identifier])
GO

ALTER TABLE [dbo].[Producer] CHECK CONSTRAINT [FK_Producer_Pack]
GO

ALTER TABLE [dbo].[Producer]  WITH CHECK ADD  CONSTRAINT [FK_Producer_Image] FOREIGN KEY([IdentifierImage])
REFERENCES [dbo].[Image] ([Identifier])
GO

ALTER TABLE [dbo].[Producer] CHECK CONSTRAINT [FK_Producer_Image]
GO

ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_ContractType] FOREIGN KEY([IdentifierContractType])
REFERENCES [dbo].[ContractType] ([Identifier])
GO

ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_ContractType]
GO

ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Job] FOREIGN KEY([IdentifierJob])
REFERENCES [dbo].[Job] ([Identifier])
GO

ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Job]
GO

ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Producer] FOREIGN KEY([IdentifierProducer])
REFERENCES [dbo].[Producer] ([Identifier])
GO

ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Producer]
GO

ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_City] FOREIGN KEY([IdentifierCity])
REFERENCES [dbo].[City] ([Identifier])
GO

ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_City]
GO


ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_DomainJob] FOREIGN KEY([IdentifierDomainJob])
REFERENCES [dbo].[DomainJob] ([Identifier])
GO

ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_DomainJob]
GO

ALTER TABLE [dbo].[ArtistOffer]  WITH CHECK ADD  CONSTRAINT [FK_ArtistOffer_Artist] FOREIGN KEY([IdentifierArtist])
REFERENCES [dbo].[Artist] ([Identifier])
GO

ALTER TABLE [dbo].[ArtistOffer] CHECK CONSTRAINT [FK_ArtistOffer_Artist]
GO

ALTER TABLE [dbo].[ArtistOffer]  WITH CHECK ADD  CONSTRAINT [FK_ArtistOffer_Offer] FOREIGN KEY([IdentifierOffer])
REFERENCES [dbo].[Offer] ([Identifier])
GO

ALTER TABLE [dbo].[ArtistOffer] CHECK CONSTRAINT [FK_ArtistOffer_Offer]
GO

ALTER TABLE [dbo].[BroadcastPartner]  WITH CHECK ADD  CONSTRAINT [FK_BroadcastPartner_City] FOREIGN KEY([IdentifierCity])
REFERENCES [dbo].[City] ([Identifier])
GO

ALTER TABLE [dbo].[BroadcastPartner] CHECK CONSTRAINT [FK_BroadcastPartner_City]
GO

ALTER TABLE [dbo].[Messagerie]  WITH CHECK ADD  CONSTRAINT [FK_Messagerie_Artist] FOREIGN KEY([IdentifierArtist])
REFERENCES [dbo].[Artist] ([Identifier])
GO

ALTER TABLE [dbo].[Messagerie] CHECK CONSTRAINT [FK_Messagerie_Artist]
GO

ALTER TABLE [dbo].[Messagerie]  WITH CHECK ADD  CONSTRAINT [FK_Messagerie_Producer] FOREIGN KEY([IdentifierProducer])
REFERENCES [dbo].[Producer] ([Identifier])
GO

ALTER TABLE [dbo].[Messagerie] CHECK CONSTRAINT [FK_Messagerie_Producer]
GO