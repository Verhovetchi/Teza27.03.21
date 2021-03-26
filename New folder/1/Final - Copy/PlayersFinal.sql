DROP TABLE IF EXISTS dbo.Players;

CREATE TABLE [dbo].[Players] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [TeamId]    INT           NOT NULL,
    [Name]      NVARCHAR (50) NOT NULL,
    [Surname]   NVARCHAR (50) NOT NULL,
    [Born_Date] DATE      NOT NULL,
    [Position]  NVARCHAR (50) NOT NULL,
    [Height]    INT           NOT NULL,
    [Weight]    INT           NOT NULL,
    [Number]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PLayers_Teams] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[Teams] ([Id])
);


INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Alphonse', N'Areola', N'1993-02-27 00:00:00', N'Goalkeeper', 191, 88, 1)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Daniel', N'Carvajal', N'1992-01-11 00:00:00', N'Defense', 171, 63, 2)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Eder', N'Militao', N'1998-01-18 00:00:00', N'Defense', 186, 72, 3)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Sergio', N'Ramos', N'1986-03-30 00:00:00', N'Defense', 183, 73, 4)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Raphael', N'Varane', N'1993-04-25 00:00:00', N'Defense', 191, 85, 5)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'N.', N'Nacho', N'1990-01-18 00:00:00', N'Defense', 180, 74, 6)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Eden', N'Hazard', N'1991-01-07 00:00:00', N'Goalkeeper', 172, 72, 7)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Toni', N'Kross', N'1990-01-04 00:00:00', N'Midfield', 182, 78, 8)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Alphonse', N'Areola', N'1993-02-27 00:00:00', N'Goalkeeper', 191, 88, 1)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Karim', N'Benzema', N'1987-12-19 00:00:00', N'Forward', 183, 74, 9)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Luka', N'Modric', N'1985-09-09 00:00:00', N'Midfield', 175, 67, 10)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Gareth', N'Bale', N'1989-06-16 00:00:00', N'Forward', 183, 74, 11)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Marcelo', N'M.', N'1988-05-12 00:00:00', N'Defense', 174, 73, 12)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Thibaut', N'Courtois', N'1992-05-11 00:00:00', N'Goalkeeper', 194, 82, 13)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Casemiro', N'C', N'1992-01-23 00:00:00', N'Midfield', 184, 80, 14)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Federico', N'Valverde', N'1998-07-22 00:00:00', N'Midfield', 181, 69, 15)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'James', N'Rodriguez', N'1991-07-12 00:00:00', N'Midfield', 180, 77, 16)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Lucas', N'Vazquez', N'1991-07-01 00:00:00', N'Forward', 173, 65, 17)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Luka', N'Jovic', N'1997-12-23 00:00:00', N'Forward', 182, 72, 18)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Marco', N'Asensio', N'1996-01-21 00:00:00', N'Midfield', 170, 68, 20)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Brahim', N'Diaz', N'1999-08-03 00:00:00', N'Midfield', 175, 70, 21)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Isco', N'I', N'1992-04-21 00:00:00', N'Midfield', 178, 76, 22)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Ferland', N'Mendy', N'1995-06-08 00:00:00', N'Defense', 178, 73, 23)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Mariano', N'Diaz', N'1993-08-01 00:00:00', N'Forward', 185, 74, 24)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (1, N'Vinicius', N'Junior', N'2000-07-12 00:00:00', N'Defense', 177, 62, 25)

INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Marc-Andre', N'ter Stegen', N'1992-04-30', N'Goalkeeper', 185, 82, 1)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Nelsinho', N'Semedo', N'1993-11-16', N'Defense', 177, 65, 2)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Gerard', N'Pique', N'1987-02-02', N'Defense', 193, 85, 3)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Ivan', N'Rakitic', N'1988-03-10 ', N'Midfield', 184, 72, 4)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Sergio', N'Busquets', N'1988-07-16', N'Midfield', 189, 73, 5)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Arthur', N'Ramos', N'1996-08-12', N'Midfield', 171, 68, 8)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Luis', N'Suarez', N'1987-01-24', N'Forward', 181, 75, 9)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Lionel', N'Messi', N'1987-06-24', N'Forward', 169, 67, 10)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Ousmane', N'Dembele', N'1997-05-15', N'Forward', 177, 61, 11)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Neto', N'N.', N'1989-07-19', N'Goalkeeper', 191, 83, 13)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Clement', N'Lenglet', N'1995-06-17', N'Defense', 187, 80, 15)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Antoine', N'Griezmann', N'1991-03-21', N'Forward', 176, 67, 17)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Jordi', N'Alba', N'1989-03-21', N'Defense', 170, 62, 18)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Martin', N'Braithwaite', N'1991-06-05', N'Forward', 180, 77, 19)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Sergi', N'Roberto', N'1992-02-17', N'Midfield', 176, 70, 20)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Frenkie', N'de Jong', N'1997-05-12', N'Midfield', 180, 70, 21)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Arturo', N'Vidal', N'1987-05-22', N'Midfield', 178, 75, 22)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Samuel', N'Umtiti', N'1993-11-14', N'Defense', 180, 70, 23)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Junior', N'Firpo', N'1996-08-22', N'Defense', 184, 71, 24)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Ignacio', N'Pena', N'1999-03-02', N'Goalkeeper', 184, 78, 26)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Ricard', N'Puig', N'1999-08-13', N'Midfield', 175, 70, 28)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Alex', N'Collado', N'1999-04-22', N'Midfield', 177, 66, 30)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Anssumane', N'Fati', N'2002-10-31', N'Forward', 178, 70, 31)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Ronald', N'Araujo', N'1999-03-07', N'Defense', 188, 79, 33)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (2, N'Daniel', N'Morer', N'1998-02-05', N'Defense', 169, 63, 35)

INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Adan', N'A.', N'1987-05-13 00:00:00', N'Goalkeeper', 190, 92, 1)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Jose', N'Gimenez', N'1995-01-20 00:00:00', N'Defense', 185, 80, 2)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Santiago', N'Arias', N'1992-01-13 00:00:00', N'Defense', 176, 68, 4)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Thomas', N'Partey', N'1993-06-13 00:00:00', N'Midfield', 182, 78, 5)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Koke', N'K.', N'1992-01-08 00:00:00', N'Midfield', 178, 73, 6)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Joao', N'Felix', N'1999-11-10 00:00:00', N'Forward', 181, 70, 7)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Saul', N'Niguez', N'1994-11-21 00:00:00', N'Midfield', 182, 78, 8)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Alvaro', N'Morata', N'1992-10-23 00:00:00', N'Forward', 189, 85, 9)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Angel', N'Correa', N'1995-03-09 00:00:00', N'Midfield', 174, 70, 10)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Thomas', N'Lemar', N'1995-01-12 00:00:00', N'Midfield', 163, 60, 11)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Jan', N'Oblak', N'1993-01-07 00:00:00', N'Goalkeeper', 185, 80, 13)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Marcos', N'Llorente', N'1995-01-30 00:00:00', N'Midfield', 184, 73, 14)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Stefan', N'Savic', N'1991-01-08 00:00:00', N'Defense', 186, 79, 15)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Hector', N'Herrera', N'1990-04-19 00:00:00', N'Midfield', 180, 74, 16)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Ivan', N'Saponjic', N'1997-08-02 00:00:00', N'Forward', 180, 72, 17)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Felipe', N'V.', N'1989-05-16 00:00:00', N'Defense', 191, 77, 18)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Diego', N'Costa', N'1988-10-07 00:00:00', N'Forward', 186, 78, 19)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Vitolo', N'V.', N'1989-11-02 00:00:00', N'Midfield', 184, 80, 20)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Yannick', N'Carrasco', N'1993-09-04 00:00:00', N'Midfield', 181, 73, 21)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Mario', N'Hermoso', N'1995-06-18 00:00:00', N'Defense', 184, 74, 22)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Kieran', N'Trippier', N'1990-09-19 00:00:00', N'Defense', 178, 71, 23)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Sime', N'Vrsaljko', N'1992-01-10 00:00:00', N'Defense', 183, 77, 24)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Alvaro', N'Garcia', N'2000-06-01 00:00:00', N'Midfield', 178, 73, 23)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Rodrigo', N'Riquelme', N'2000-04-02 00:00:00', N'Midfield', 174, 74, 32)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (3, N'Sergio', N'Camello', N'2001-02-10 00:00:00', N'Forward', 177, 70, 34)

INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Tomas', N'Vaclik', N'1989-03-29 00:00:00', N'Goalkeeper', 188, 78, 1)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Sergio', N'Gomez', N'1992-03-28 00:00:00', N'Defense', 185, 72, 3)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Lucas', N'Ocampos', N'1994-07-11 00:00:00', N'Midfield', 187, 78, 5)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Daniel', N'Carrico', N'1988-08-04 00:00:00', N'Defense', 180, 79, 6)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Rony', N'Lopes', N'1995-12-28 00:00:00', N'Midfield', 168, 88, 7)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Ever', N'Banega', N'1988-06-11 00:00:00', N'Midfield', 174, 71, 10)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Munir', N'el Hadady', N'1995-09-01 00:00:00', N'Forward', 179, 70, 11)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Jules', N'Kounde', N'1998-11-12 00:00:00', N'Defense', 178, 70, 12)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Yassine', N'Bounou', N'1991-04-05 00:00:00', N'Goalkeeper', 192, 75, 13)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Suso', N'S.', N'1993-11-19 00:00:00', N'Forward', 176, 70, 14)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Youssef', N'En Nesyri', N'1997-06-01 00:00:00', N'Forward', 192, 80, 15)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Jesus', N'Navas', N'1985-11-21 00:00:00', N'Midfield', 172, 60, 16)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Nemanja', N'Gudelj', N'1991-11-16 00:00:00', N'Midfield', 187, 77, 17)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Sergio', N'Escudero', N'1989-09-02 00:00:00', N'Defense', 176, 69, 18)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Luk', N'De Jong', N'1990-08-27 00:00:00', N'Forward', 188, 73, 19)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Diego', N'Carlos', N'1993-03-15 00:00:00', N'Defense', 185, 80, 20)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Oliver', N'Torres', N'1994-11-10 00:00:00', N'Midfield', 178, 70, 21)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Franco', N'Vazquez', N'1989-07-15 00:00:00', N'Midfield', 187, 78, 22)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Reguilon', N'C.', N'1996-12-16 00:00:00', N'Defense', 176, 64, 23)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Joan', N'Jordan', N'1994-07-06 00:00:00', N'Midfield', 184, 75, 24)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Fernando', N'F.', N'1987-07-25 00:00:00', N'Midfield', 185, 70, 25)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Jose', N'Mena', N'1998-05-15 00:00:00', N'Midfield', 183, 77, 26)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Jose', N'Lara', N'2000-03-07 00:00:00', N'Midfield', 168, 65, 28)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Javier', N'Diaz', N'1997-05-15 00:00:00', N'Goalkeeper', 183, 71, 31)
INSERT INTO [dbo].[Players] ([TeamId], [Name], [Surname], [Born_Date], [Position], [Height], [Weight], [Number]) VALUES (4, N'Alfonso', N'Pastor', N'2000-10-04 00:00:00', N'Goalkeeper', 190, 78, 33)














