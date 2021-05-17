/*

Students:
    Rajeev Goyal
    Reyansh Singh

Mentors:
    Betty Cooper
    Jughead Jones

*/
USE discorddb;

-------------------------------------------
--Student

INSERT INTO Student VALUES
('825457131750162442','Rajeev','Goyal');

INSERT INTO Student VALUES
('843527136060112917','Reyansh','Singh');

-------------------------------------------
--Mentor

INSERT INTO Mentor VALUES
('794255025639391252','Jughead','Jones',"jug@email.com");

INSERT INTO Mentor VALUES
('794256483696377927','Betty','Cooper',"srs1036.1036@gmail.com");

------------------------------------------
--Requested_Topic

INSERT INTO Requested_Topic VALUES 
(1,"Algorithms","CSE",2);

INSERT INTO Requested_Topic VALUES 
(2,"Probability","CSE",1);

INSERT INTO Requested_Topic VALUES
(3,'Signal Processing',"EE",1);

---------------------------------------------
--Requested

INSERT INTO Requested VALUES 
('825457131750162442',1);

INSERT INTO Requested VALUES 
('825457131750162442',2);

INSERT INTO Requested VALUES
('843527136060112917',3);

-----------------------------------------------
--Ongoing_Topics

INSERT INTO Ongoing_Topic VALUES
(1,'Algorithms');

INSERT INTO Ongoing_Topic VALUES
(3,'Signal Processing');

INSERT INTO Ongoing_Topic VALUES
(4,'Thermodynamics');

-----------------------------------------------
--Registered



INSERT INTO Registered VALUES
('825457131750162442',1);

INSERT INTO Registered VALUES
('843527136060112917',1);

INSERT INTO Registered VALUES
('843527136060112917',3);

-------------------------------------------------
--Mentoring
INSERT INTO Mentoring VALUES
(794256483696377927,1,'2021-05-16','2021-07-16');

INSERT INTO Mentoring VALUES
(794255025639391252,3,'2021-05-20','2021-07-22');

---------------------------------------------------
-- Date_Time

INSERT INTO Date_Time VALUES
(1,'2021-05-20-15:00:00');

INSERT INTO Date_Time VALUES
(1,'2021-05-26-16:00:00');

INSERT INTO Date_Time VALUES
(3,'2021-05-24-09:00:00');

INSERT INTO Date_Time VALUES
(3,'2021-06-02-12:00:00');

------------------------------------------------------------
--Contains (requested,ongoing_id)

INSERT INTO Contains VALUES
(1,1);

INSERT INTO Contains VALUES
(3,3);
-------------------------------------------------------
