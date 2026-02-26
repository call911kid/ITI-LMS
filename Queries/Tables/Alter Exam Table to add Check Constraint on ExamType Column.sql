ALTER TABLE [dbo].[Exam] 
ADD CONSTRAINT [CHK_Exam_Type] CHECK ([ExamType] IN ('Exam', 'Corrective'));