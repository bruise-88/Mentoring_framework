DROP DATABASE IF EXISTS discorddb;

CREATE DATABASE discorddb;
USE discorddb;

--Student
CREATE TABLE Student (
    student_discordid VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    PRIMARY KEY (student_discordid)
); 

--Mentor

CREATE TABLE Mentor(
    mentor_discordid VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    PRIMARY KEY (mentor_discordid)
); 

--Requested_Topic

CREATE TABLE Requested_Topic(
    topic_id INT,
    topic_name VARCHAR(50),
    stream VARCHAR(50),
    student_count INT DEFAULT 0,
    PRIMARY KEY(topic_id)
); 

-- Requested

CREATE TABLE Requested(
    student_discordid VARCHAR(50),
    topic_id INT,
    PRIMARY KEY(student_discordid, topic_id),
    FOREIGN KEY (student_discordid) REFERENCES Student(student_discordid),
    FOREIGN KEY(topic_id) REFERENCES Requested_Topic(topic_id)
);

--Ongoing_Topics
CREATE TABLE Ongoing_Topic(
    topic_id INT,
    topic_name VARCHAR(50),
    PRIMARY KEY(topic_id)
);

--Mentoring
CREATE TABLE Mentoring(
    mentor_discordid VARCHAR(50),
    topic_id INT,
    `start_date` DATETIME,
    `end_date` DATETIME,
    PRIMARY KEY (mentor_discordid,topic_id),
    FOREIGN KEY (mentor_discordid) REFERENCES Mentor(mentor_discordid),
    FOREIGN KEY (topic_id) REFERENCES Ongoing_Topic(topic_id)
);

--Date_time
CREATE TABLE Date_Time(
    topic_id INT, 
    date_time  DATETIME, 
    PRIMARY KEY(topic_id, date_time), 
    FOREIGN KEY (topic_id) REFERENCES Ongoing_Topic(topic_id)
);

--Registered
CREATE TABLE Registered(
    student_discordid VARCHAR(50), 
    topic_id INT, 
    PRIMARY KEY(student_discordid, topic_id), 
    FOREIGN KEY (student_discordid) REFERENCES Student(student_discordid), 
    FOREIGN KEY(topic_id) REFERENCES Ongoing_Topic(topic_id)
);

--Contains
CREATE TABLE Contains(
    requested_topic_id INT, 
    ongoing_topic_id INT, 
    PRIMARY KEY(requested_topic_id, ongoing_topic_id), 
    FOREIGN KEY(ongoing_topic_id) REFERENCES Ongoing_Topic(topic_id),
    FOREIGN KEY(requested_topic_id) REFERENCES Requested_Topic(topic_id)
);