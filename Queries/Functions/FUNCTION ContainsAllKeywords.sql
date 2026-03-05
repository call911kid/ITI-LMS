CREATE OR ALTER FUNCTION [dbo].[UFN_ContainsAllKeywords]
(
    @StudentAnswer  NVARCHAR(MAX),
    @CorrectAnswer  NVARCHAR(MAX)
)
RETURNS BIT
AS
BEGIN
    IF @StudentAnswer IS NULL OR @CorrectAnswer IS NULL
        RETURN 0;

    DECLARE @Answer  NVARCHAR(MAX) = LOWER(LTRIM(RTRIM(@StudentAnswer)));
    DECLARE @Keys    NVARCHAR(MAX) = LOWER(LTRIM(RTRIM(@CorrectAnswer))) + ' ';
    DECLARE @Word    NVARCHAR(500);
    DECLARE @Pos     INT;

    WHILE LEN(@Keys) > 0
    BEGIN
        SET @Pos  = CHARINDEX(' ', @Keys);
        SET @Word = LTRIM(RTRIM(SUBSTRING(@Keys, 1, @Pos - 1)));
        SET @Keys = SUBSTRING(@Keys, @Pos + 1, LEN(@Keys));

        IF LEN(@Word) > 0
           AND @Answer NOT LIKE '%' + @Word + '%'
            RETURN 0;
    END

    RETURN 1; 
END;
GO
