# SQL Database Naming Conventions




## 1. SQL Syntax & Formatting
* **Rule:** All SQL keywords and built-in data types **MUST** be written in **UPPERCASE**.
* **Why:** This makes the structural words stand out from our custom data and object names.

**Good:**
```sql
SELECT StudentName, IntakeTrackId FROM dbo.Student WHERE IntakeTrackId = 5;
```

**Bad:**
```sql
select StudentName, IntakeTrackId from dbo.Student where IntakeTrackId = 5;
```

---

## 2. Views
* **Rule:** Must start with the prefix `VW_` followed by PascalCase.

**Good:** `VW_StudentExamGrades`, `VW_ActiveInstructors`  
**Bad:** `StudentGradesView`, `vwStudentExams`, `VW_student_exams`

---

## 3. Functions
You **must** distinguish between Scalar and Table-Valued Functions (TVFs) so developers know exactly how to use them (`SELECT FN()` vs `SELECT * FROM TVF()`).

* **Scalar Functions (Returns a single value):** Use the prefix `FN_` followed by PascalCase.
  * **Example:** `FN_CalculateFinalGrade`, `FN_GetStudentAge`
* **Table-Valued Functions (Returns a table):** Use the prefix `TVF_` followed by PascalCase.
  * **Example:** `TVF_GetStudentExams`, `TVF_InstructorCourses`

---

## 4. Stored Procedures
* **Rule:** Must start with the prefix `USP_` (User Stored Procedure) followed by a VerbNoun structure in PascalCase.
* **CRITICAL:** **Never** use `sp_` as a prefix. SQL Server reserves `sp_` for system stored procedures, and using it causes performance hits.

**Good:** `USP_AddNewStudent`, `USP_GenerateRandomExam`  
**Bad:** `sp_AddStudent`, `InsertStudentData`, `USP_add_student`

---

## 5. Tables and Columns
* **Rule 1:** Use **PascalCase** (Capitalize the first letter of every word, no underscores).
* **Rule 2:** Table names must be **Singular**, not plural.

**Good Tables:** `Student`, `IntakeTrack`, `StudentExam`  
**Bad Tables:** `Students`, `Student_Exams`  
**Good Columns:** `StudentId`, `CourseName`, `MaxDegree`

---

## 6. Variables and Parameters
* **Rule:** Local variables and Stored Procedure parameters should use `@camelCase` (first letter lowercase, subsequent words capitalized).

**Good:** `@studentId`, `@courseName`, `@intakeTrackId`  
**Bad:** `@StudentID`, `@COURSE_NAME`

---

## 7. Constraints
When using `ALTER TABLE` or `CREATE TABLE`, you must follow our established constraint naming patterns:

* **Primary Keys:** `PK_TableName` *(e.g., `PK_User`)*
* **Foreign Keys:** `FK_ChildTable_ParentTable` *(e.g., `FK_Student_User`)*
* **Unique Constraints:** `Unique_Table_Column` *(e.g., `Unique_User_Email`)*
* **Check Constraints:** `CHK_Table_Column` *(e.g., `CHK_User_Role`)*

---

## 8. General Coding Rules
1. **No Abbreviations:** Use full words unless the abbreviation is universally accepted in the industry. Use `StudentId` (not `StdId`). Use `Department` (not `Dept`).
2. **Indentation:** Clauses like `JOIN`, `WHERE`, `AND`, `OR`, and `GROUP BY` should start on a new line and be properly indented.
3. **Always use schemas:** When querying or creating objects, always specify the schema to give the SQL engine a slight performance boost (e.g., write `dbo.Student` instead of just `Student`).

