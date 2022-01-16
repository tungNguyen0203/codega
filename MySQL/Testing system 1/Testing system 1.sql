DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department (
	DepartmentID INT,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Position (
	PositionID INT,
    PositionName ENUM('Dev', 'Test', 'Scrum Master', 'PM')
);

CREATE TABLE Account (
	AccountID INT,
    Email VARCHAR(50),
    Username VARCHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATE
);

CREATE TABLE `Group` (
	Group_ID INT,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATE
);

CREATE TABLE GroupAccount (
	GroupID INT,
    AccountID INT,
    JoinDate DATE
);

CREATE TABLE TypeQuestion (
	TypeID INT,
    TypeName ENUM ('Essay', 'Multiple-Choice')
);

CREATE TABLE CategoryQuestion (
	CategoryID INT,
    CategoryName VARCHAR(50)
);

CREATE TABLE Question (
	QuestionID INT,
    Content VARCHAR(50),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate date
);

CREATE TABLE Answer (
	AnswerID INT,
    Content VARCHAR(50),
    QuestionID INT,
    isCorrect ENUM ('True', 'False')
);

CREATE TABLE Exam (
	ExamID INT,
	`Code` INT,
    Title VARCHAR(50),
    CategoryID INT,
    Duration DATETIME,
    CreatorID INT,
    CreateDate DATE
);

CREATE TABLE ExamQuestion (
	ExamID INT,
    QuestionID INT
);
select * from Testing_System_Assignment_1.account;