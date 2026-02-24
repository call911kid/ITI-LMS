ALTER TABLE [dbo].[User]
DROP CONSTRAINT [CHK_User_Role];

ALTER TABLE [dbo].[User]
ADD CONSTRAINT [CHK_User_Role] CHECK ([Role] IN ('AdminRole', 'InstructorRole', 'StudentRole', 'TrainingManagerRole'));

ALTER TABLE [dbo].[User]
DROP CONSTRAINT [Unique_User_Email]

ALTER TABLE [dbo].[User]
DROP COLUMN [Email];

ALTER TABLE [dbo].[User]
ADD [Username] NVARCHAR(50) NOT NULL;

ALTER TABLE [dbo].[User]
ADD CONSTRAINT [Unique_User_Username] UNIQUE ([Username]);