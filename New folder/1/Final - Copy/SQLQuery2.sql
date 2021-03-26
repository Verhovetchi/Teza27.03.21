CREATE TABLE [dbo].[Teams2] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [ImageId]        INT           NOT NULL,
    [Name]           NVARCHAR (50) NOT NULL,
    [Matches]        INT           NOT NULL,
    [Wins]           INT           NOT NULL,
    [Draws]          INT           NOT NULL,
    [Loses]          INT           NOT NULL,
    [Goals_scored]   INT           NOT NULL,
    [Goals_received] INT           NOT NULL,
    [Points]         INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Teams2_Image] FOREIGN KEY ([ImageId]) REFERENCES [dbo].[Images] ([Id])
);


INSERT INTO Teams2([ImageId], [Name], [Matches], [Wins], [Draws], [Loses], [Goals_scored], [Goals_received], [Points])
SELECT [ImageId], [Name], [Matches], [Wins], [Draws], [Loses], [Goals_scored], [Goals_received], [Points] 
FROM Teams 
ORDER BY Points

INSERT INTO Teams([ImageId], [Name], [Matches], [Wins], [Draws], [Loses], [Goals_scored], [Goals_received], [Points])
SELECT [ImageId], [Name], [Matches], [Wins], [Draws], [Loses], [Goals_scored], [Goals_received], [Points] 
FROM Teams2 
ORDER BY Points

drop table if exists Teams2