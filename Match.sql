CREATE TABLE [dbo].[Match]
(
	[MatchId] INT NOT NULL IDENTITY(1,1),
    [DateTime] DATETIME NULL, 
    [Venue] VARCHAR(50) NULL, 
    [AmountPaid] INT NULL, 
    [MemberId] INT NULL,
	CONSTRAINT PK_Match PRIMARY KEY (MatchId),
	CONSTRAINT FK_Match_MemberId FOREIGN KEY (MemberId) REFERENCES Member(MemberId)

)
