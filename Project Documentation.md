## Project Title:
ITI Learning Management System (LMS)

## Description
This database powers a comprehensive Learning Management System for ITI branches
It manages:

**Academic structure:** Branches, Departments, Tracks, Intakes

**Users:** Admins, Instructors, Students

**Courses:** Assignment, Enrollment

**Exams:** Creation, Assignment, Student Attempts, Grading

**Reporting and Audit Logs**

### Key Features:

* Multi-branch support

* Role-based access

* Automatic exam grading

Business logic enforcement via stored procedures and triggers

## System Architecture

**The system is using:**

* Microsoft SQL Server

* Tables

* Stored Procedures

* Functions

* Views

* Triggers

* Audit Logging


## Core Entities

**User**

Stores system login information

**Branch**

Represents branchs 

**Department**

Departments belongs to Branchs

**Track**

Tracks belongs to Departments

**Intake**

Represents a batch 

**Course**

Represents course details and relations

**Instructor**

Contains Instructor data and linked to User table

**Student**

Contains Student data and linked to User table

**Exam**

Represents exam for a course

**Question**

Stores question data

**Choice**

Stores questions choices

**StudentExam**

Stores student exam attempt

**StudentAnswer**

Stores student answers:

## Functions 

This folder contains **SQL Functions** that return a single value.

* **Check Question Exists.sql**
  Returns:

  * `1` if the question exists
  * `0` if the question does not exist

* **Count Choices Number.sql**
  Returns the number of choices for a specific question.

* **Get Current Instructor Id.sql**
  Returns the `InstructorId` based on the current `UserId`.

* **Get Current Student Id.sql**
  Returns the `StudentId` based on the current `UserId`.

* **Get Exam Paper For Student.sql**
  Returns the exam paper for a student, including:

  * Exam questions
  * Corresponding choices

* **Get Track Count Per Department.sql**
  Returns the total number of tracks within a specific department.


## Stored Procedures 

This is the **core part of the LMS project**, divided into several categories:

### Add Procedures

Handles insertion of new records. Most procedures include:

* **Validation**
* **TRY/CATCH blocks**

Examples:

* Add User
* Add Student
* Add Instructor
* Add Course
* Add Exam
* Add Question
* Add Choice
* Add Track
* Add Intake
* Add Branch

### Delete Procedures

Handles deletion of records safely. Includes:

* Foreign Key checks
* Prevention of cascade errors

Examples:

* Delete Student
* Delete Instructor
* Delete Exam
* Delete Track
* Delete Branch

### Update Procedures

Handles updating existing records. Examples:

* Update Branch
* Update Course
* Update Track
* Update Intake
* Update Exam

### Exam Procedures

Handles **exam-specific logic**, including:

* Adding random questions to exams
* Submitting student answers
* Updating answers
* Grading exams

### Get Procedures

Handles **data retrieval** using `SELECT` statements, often with `JOINs` and Views. Examples:

* Get All Students
* Get All Instructors
* Get All Classes
* Get Choices By Question
* Get Question With Choices



## Views 

Views are used to **simplify complex queries**. Examples:

* **All Questions With Choices**
  Joins `Question` and `Choice` tables to display questions with their corresponding choices.

* **Class Details**
  Joins `Class`, `Course`, `Instructor`, and `Track` tables to show detailed class information.

* **Classes Per Instructor**
  Retrieves all classes taught by a specific instructor.

* **Department Tracks Details**
  Retrieves department information along with all associated tracks.



## Triggers 

This folder contains **advanced triggers** for enforcing business rules.

* **Trigger Check Exam Time**
  Ensures that students cannot take an exam outside the allowed time.

* **Trigger Prevent Duplicate Choice**
  Prevents the creation of duplicate choices with the same text for a question.

* **Trigger Prevent Duplicate Class**
  Prevents inserting duplicate classes with identical data.

* **Trigger Check Permission Branch**
  Ensures the user has the correct permissions for a specific branch.



## Migration to AWS

This folder contains scripts for **preparing the LMS database for deployment on AWS**.

* **Create Database.sql** – Creates the LMS database.
* **Table Creation.sql** – Creates all required tables.
* **Drop Tables.sql** – Drops tables if needed (used for reseeding).
* **Reseeding Data.sql** – Inserts initial or sample data for testing or deployment.


## Relationships

### One-to-Many

* Branch - Departments

* Department - Tracks

* Course - Exams

* Question - Choices

### Many-to-Many

* Student - Course

* Instructor - Course

* Exam - Question


## Business Logic Layer

**The system uses:**

### Stored Procedures

**Grouped into:**

* Add

* Update

* Delete

* Get

* Exam Management

### All insert/update operations are done via stored procedures to ensure:

* Data validation

* Security

* Transaction safety

### Functions

**Used for:**

* Validation checks

* Counting

* Returning computed data

### Views

**Used for:**

* Reporting

* Simplifying complex joins

### Triggers

**Used to:**

* Prevent duplicate data

* Enforce business rules

* Validate exam timing

* Maintain audit logs

## Exam Flow

* Instructor creates exam

* Questions are assigned

* Student starts exam

* Answers stored in StudentAnswer

* Score calculated automatically

* Result stored in StudentExam

## Security

* Role-based access

* Permission validation using trigger

## Advanced Features

* Random question generation

* Auto grading

* Audit logging

* Prevent duplicate entries

* Constraint validatio
