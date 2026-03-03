CREATE OR ALTER TRIGGER [dbo].[TR_StudentAnswer_CheckExamTime]
ON [dbo].[StudentAnswer]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN [dbo].[StudentExam]   se  ON i.[StudentExamId]  = se.[StudentExamId]
        JOIN [dbo].[Exam]          e   ON se.[ExamId]        = e.[ExamId]
        WHERE GETDATE() < e.[StartTime]
           OR GETDATE() > e.[EndTime]
    )
    BEGIN
        ROLLBACK TRANSACTION;
        RAISERROR('Cannot submit or modify answers: exam is not currently active (check start/end time).', 16, 1);
    END
END
GO
