CREATE TABLE [dbo].[Member]
(
	[MemberId] INT NOT NULL IDENTITY(1,1), 
    [Surname] VARCHAR(50) NULL, 
    [FirstName] VARCHAR(50) NULL, 
    [Authorised] BIT NULL, 
    [Email] VARCHAR(100) NULL,
	CONSTRAINT PK_Member PRIMARY KEY (MemberId)
)
