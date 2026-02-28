USE [ITI_LMS];

-- 1. Drop the deepest child tables first
DROP TABLE IF EXISTS [StudentAnswer];
DROP TABLE IF EXISTS [StudentExam];
DROP TABLE IF EXISTS [ExamQuestion];
DROP TABLE IF EXISTS [Choice];

-- 2. Drop intermediate tables
DROP TABLE IF EXISTS [Class];
DROP TABLE IF EXISTS [Exam];
DROP TABLE IF EXISTS [Question];
DROP TABLE IF EXISTS [Student];
DROP TABLE IF EXISTS [Instructor];

-- 3. Drop base relationship tables
DROP TABLE IF EXISTS [IntakeTrack];
DROP TABLE IF EXISTS [Track];

-- 4. Drop the independent parent tables last
DROP TABLE IF EXISTS [User];
DROP TABLE IF EXISTS [Course];
DROP TABLE IF EXISTS [Intake];
DROP TABLE IF EXISTS [Department];
DROP TABLE IF EXISTS [Branch];