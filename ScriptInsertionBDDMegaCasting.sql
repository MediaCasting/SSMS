USE MegaCasting
GO

INSERT INTO [dbo].[City](Name, ZipCode)
VALUES 
('Paris','75000'),
('Laval','53000'),
('Rennes','35000')

GO

INSERT INTO [dbo].[BroadcastPartner](LastName,FirstName,Phone,Email,Street,IdentifierCity)
VALUES 
('Dupond', 'Pierre', '0604056408','p.dupond@gmail.com','1 rue de droite',1),
('Poupion', 'Mickael', '060854698','m.poupion@gmail.com','1 rue de gauche',2),
('Deshaies', 'Antoine', '089485316','a.deshaies@gmail.com','1 rue de derrière',3)
GO


INSERT INTO [dbo].[ContractType](Name)
VALUES
('CDD'),
('CDI'),
('Apprentissage'),
('Interim')

GO

INSERT INTO [dbo].[DomainJob](Name)
VALUES 
('Musique'),
('Danse'),
('Cinema')

GO

INSERT INTO [dbo].[Job](Name,IdentifierDomainJob)
VALUES 
('Trompetiste','1'),
('Guitariste','1'),
('Pianiste','1'),
('Jazz','2'),
('Pop','2'),
('Salsa','2'),
('Perchiste','3'),
('Acteur','3'),
('Cadreur','3')

GO

INSERT INTO [dbo].[Pack](Name, Prix, OfferNumber)
VALUES
('Premium','500','100'),
('Avancé','200','30'),
('Débutant','75','10')

GO
INSERT INTO [dbo].[Image](Format, Libelle)
VALUES 
('png','photo1'),
('jpeg','photo2'),
('png','photo3')

INSERT INTO [dbo].[Producer](CompanyName ,FirstName, LastName, Password, IdentifierPack, IdentifierImage)
VALUES
('Design10','Vignac','Louis','plusde10','1','1'),
('Deter et de Feu','Doe', 'John','Password','2','2'),
('Auto Cine Cascade','Rosso','Patrick','Jentenbieng','3','3')

GO

INSERT INTO [dbo].[Artist](Login, FirstName, LastName, Password, Phone, Email,Age, Descritpion, IdentifierCity, IdentifierImage)
VALUES
('Koba7','Laddé','Koba','LeBat7','0243025697','koba@gmail.com','26','Chanteur','1','2'),
('DamGalace','Galace', 'Damien','Banane','0244568798','Galace.d@gmail.com','65','Acteur indépendant','2','1'),
('Larry','Stocrate','Larry','Faismoilabise','0256978456','larry@gmail.com','31','Danseur professionnel','3','3')

GO


INSERT INTO [dbo].[Offer](Name,Reference,PublishDateTime,Duration,StartContractDate,PostCount,JobDescription,ProfilDescription,Street,IdentifierCity,IdentifierProducer,IdentifierJob,IdentifierContractType)
VALUES 
('Guitariste','AAAA1A',2020-10-16,'10',2020-11-24,'3','Guitariste pour une chorale','Talentueux et tenace','26 rue du Roi lion','1','2','1','4'),
('Pop','BBBB2B',2020-10-20,'20',2021-02-04,'2','Danseur Pop pour clip','Danseurs motivé, agile','27 rue du Peter Pan','3','3','5','1'),
('Cascadeur','CCCC3C',2020-12-16,'10',2020-12-12,'2','Pianiste comédie musicale','Rigoureux','1 rue du piano','2','1','8','3'),
('Pianiste','DDD4D',2020-27-11,'10',2020-12-24,'5','Cascade crash voiture','Muclé,Courageux et précis','2 rue du Trois','3','2','4','1'),
('Perchiste','EEE5E',2021-02-10,'60',2021-04-24,'3','Perchiste film','Minimum 3 ans d expérience','23 avenue du Général de Gaule','2','1','8','3'),
('Cadreur','FFF6F',2021-02-10,'60',2021-04-24,'12','Cadreur film','Expérience : 2 ans minimum','23 avenue du Général de Gaule','2','1','8','3')

GO

INSERT INTO [dbo].[ArtistOffer](IdentifierOffer,IdentifierArtist)
VALUES
(1,2),
(2,1),
(3,3)