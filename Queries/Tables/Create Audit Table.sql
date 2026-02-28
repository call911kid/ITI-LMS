CREATE TABLE [dbo].[Audit] (
    [LogId] INT IDENTITY(1,1),
    [Number] INT,
    [Severity] INT,
    [State] INT,
    [Procedure] NVARCHAR(128),
    [Line] INT,
    [Message] NVARCHAR(MAX),
    [Date] DATETIME DEFAULT GETDATE(),

    CONSTRAINT [PK_Audit] PRIMARY KEY ([LogId])
) ON [PRIMARY];
