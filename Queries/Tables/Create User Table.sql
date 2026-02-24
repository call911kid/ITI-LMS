CREATE TABLE [dbo].[User] (
    [UserId] INT IDENTITY(1,1),
    [Username] NVARCHAR(50) NOT NULL,
    [Password] NVARCHAR(255) NOT NULL,
    [Role] NVARCHAR(50) NOT NULL, 
    [CreatedAt] DATETIME DEFAULT GETDATE(),

    CONSTRAINT [PK_User] PRIMARY KEY ([UserId]),

    CONSTRAINT [Unique_User_Username] UNIQUE ([Username]),
    CONSTRAINT [CHK_User_Role] CHECK ([Role] IN ('AdminRole', 'InstructorRole', 'StudentRole', 'TrainingManagerRole'))
)