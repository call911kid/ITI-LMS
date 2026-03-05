USE [ITI_LMS]
GO


EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_Questions',           @RoleName='StudentRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_Questions',           @RoleName='InstructorRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_Choices',             @RoleName='StudentRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_Choices',             @RoleName='InstructorRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_QuestionWithChoices', @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_QuestionWithChoices', @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ExamDetails',         @RoleName='StudentRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ExamDetails',         @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ExamDetails',         @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_InstructorCourses',   @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_InstructorCourses',   @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_InstructorStudents',  @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_InstructorStudents',  @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ClassDetails',        @RoleName='StudentRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ClassDetails',        @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ClassDetails',        @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ClassesPerTrack',     @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ClassesPerTrack',     @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ClassesPerInstructor',@RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_ClassesPerInstructor',@RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_IntakeTrack',         @RoleName='StudentRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_IntakeTrack',         @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_IntakeTrack',         @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_IntakeFullInfo',      @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_AllTracks',           @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_DepartmentTracksDetails', @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_AllDepartments',      @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='VW_BranchFullInfo',      @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='vw_BackupLog',           @RoleName='TrainingManagerRole';



-- ---------- Student Procedures ----------

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_SubmitAnswer',              @RoleName='StudentRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_UpdateAnswer',              @RoleName='StudentRole';

-- ---------- Instructor Procedures ----------

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddQuestion',               @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddChoice',                 @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetChoicesByQuestion',      @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetQuestionWithChoices',    @RoleName='InstructorRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddExam',                   @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_UpdateExam',                @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteExam',                @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddQuestionToExam',         @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddRandomQuestionsToExam',  @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_RemoveQuestionFromExam',    @RoleName='InstructorRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetAllClasses',             @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetClassesByInstructor',    @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetClassesByTrack',         @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetTracksForIntakeAtBranch',@RoleName='InstructorRole';

-- ---------- Training Manager Procedures ----------

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddStudent',                @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteStudent',             @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetStudents',               @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddInstructor',             @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteInstructor',          @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetInstructors',            @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddCourse',                 @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_UpdateCourse',              @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteCourse',              @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddNewClass',               @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteClass',               @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetAllClasses',             @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetClassesByInstructor',    @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetClassesByTrack',         @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddNewBranch',              @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_UpdateBranch',              @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteBranch',              @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddNewIntake',              @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_UpdateIntake',              @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteIntake',              @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_OpenTrackForIntakeAtBranch',    @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_RemoveTrackFromIntakeAtBranch', @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_GetTracksForIntakeAtBranch',    @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddTrack',                  @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_UpdateTrack',               @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteTrack',               @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddDepartment',             @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_UpdateDepartment',          @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_DeleteDepartment',          @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_BackupDatabase',            @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_ViewUserAccounts',          @RoleName='TrainingManagerRole';



EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='TVF_GetExamPaperForStudent',     @RoleName='StudentRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='TVF_GetExamPaperForInstructor',  @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='TVF_GetStudentsByIntakeTrack',   @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='TVF_GetStudentsByIntakeTrack',   @RoleName='TrainingManagerRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='SELECT', @ObjectName='TVF_GetTracksByDepartmentId',    @RoleName='TrainingManagerRole';

GO




EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetCurrentStudentId',           @RoleName='StudentRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetCurrentInstructorId',        @RoleName='InstructorRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_CheckClassExists',              @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_CheckClassExists',              @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_CheckQuestionExists',           @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_CheckQuestionExists',           @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetChoiceCount',                @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetChoiceCount',                @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetClassCountByTrack',          @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetClassCountByTrack',          @RoleName='TrainingManagerRole';


EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetInstructorClassCount',       @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetInstructorClassCount',       @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetStudentsCountByIntakeTrack', @RoleName='InstructorRole';
EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetStudentsCountByIntakeTrack', @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='FN_GetTrackCountPerDepartment',    @RoleName='TrainingManagerRole';



EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddUserAccount',               @RoleName='TrainingManagerRole';

EXEC dbo.USP_ManagePermissions @Action='GRANT', @Permission='EXECUTE', @ObjectName='USP_AddIntakeTrack',               @RoleName='TrainingManagerRole';
