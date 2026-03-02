-- 1. Drop the old Foreign Key and Unique constraints
ALTER TABLE [dbo].[StudentAnswer] DROP CONSTRAINT [FK_StudentAnswer_Question];
ALTER TABLE [dbo].[StudentAnswer] DROP CONSTRAINT [Unique_StudentExam_Question];

-- 2. Swap the columns (Drop QuestionId, Add ExamQuestionId)
ALTER TABLE [dbo].[StudentAnswer] DROP COLUMN [QuestionId];
ALTER TABLE [dbo].[StudentAnswer] ADD [ExamQuestionId] INT NOT NULL;


ALTER TABLE [dbo].[StudentAnswer] WITH CHECK ADD CONSTRAINT [FK_StudentAnswer_ExamQuestion]
FOREIGN KEY([ExamQuestionId]) REFERENCES [dbo].[ExamQuestion] ([ExamQuestionId]);

ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [FK_StudentAnswer_ExamQuestion];

ALTER TABLE [dbo].[StudentAnswer] ADD CONSTRAINT [Unique_StudentExam_ExamQuestion] 
UNIQUE ([StudentExamId], [ExamQuestionId]);