CREATE TABLE [dbo].[Quote]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Open] REAL NOT NULL, 
    [High] FLOAT NOT NULL, 
    [Low] FLOAT NOT NULL, 
    [Close] FLOAT NOT NULL, 
    [Volume] FLOAT NOT NULL, 
    [DateTime] DATETIME NOT NULL, 
    [SymbolID] INT NOT NULL
)
CREATE TABLE [dbo].[Symbol] (
    [Symbol_Id] INT           NOT NULL,
    [Name]      NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Symbol_Id] ASC),
    CONSTRAINT [FK_Symbol_Symbol] FOREIGN KEY ([Symbol_Id]) REFERENCES [dbo].[Symbol] ([Symbol_Id])
);