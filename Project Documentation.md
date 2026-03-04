## Project Title:
	Examination System Database.

## Description
This database powers a comprehensive Learning Management System for ITI branches.
It manages:

**Academic structure:** Branches, Departments, Tracks, Intakes

**Users:** Admins, Instructors, Students

**Courses:** Assignment, Enrollment

**Exams:** Creation, Assignment, Student Attempts, Grading

**Reporting and Audit Logs**

### Key Features:

Multi-branch support

Role-based access

Automatic exam grading

Business logic enforcement via stored procedures and triggers

## System Architecture

**The system is using:**

-Microsoft SQL Server

-Tables

-Stored Procedures

-Functions

-Views

-Triggers

-Audit Logging


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

Stores student answers

## Relationships

### One-to-Many

Branch - Departments

Department - Tracks

Course - Exams

Question - Choices

### Many-to-Many

Student - Course

Instructor - Course

Exam - Question


