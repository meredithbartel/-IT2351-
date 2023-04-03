CREATE DATABASE `students_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ 
/*!80016 DEFAULT ENCRYPTION='N' */;
.0




 CREATE TABLE `majors` (
  `major_id` int NOT NULL AUTO_INCREMENT,
  `major_name` varchar(60) NOT NULL,
  `major_description` varchar(60) NOT NULL,
  PRIMARY KEY (`major_id`)
) ;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `major_id` int NOT NULL,
  PRIMARY KEY (`student_id`),
  FOREIGN KEY (major_id) REFERENCES majors(major_id)
) ;
CREATE TABLE `classes` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(60) NOT NULL,
  `class_description` varchar(60) NOT NULL,
  PRIMARY KEY (`class_id`)
) ;
CREATE TABLE `student_classes` (
  `student_class_id` int NOT NULL AUTO_INCREMENT,
 `student_id` int NOT NULL,
  `class_id` int NOT NULL,
  PRIMARY KEY (`student_class_id`),
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (class_id) REFERENCES classes(class_id)
  );



INSERT INTO `students_db`.`students`
(
`email_address`,
`first_name`,
`last_name`,
`address`,
`major_id`
)
VALUES
(
'Kevin@school.edu',
'Kevin',
'Green',
'124 Main St',
1);


INSERT INTO `students_db`.`majors`
(
`major_name`,
`major_description`)
VALUES(
'Programing',
'computerprograming');

INSERT INTO `students_db`.`majors`
(
`major_name`,
`major_description`)
VALUES(
'Cybersecurity',
'Cybersecurity');

INSERT INTO `students_db`.`majors`
(
`major_name`,
`major_description`)
VALUES(
'Networking',
'Networking');





INSERT INTO `students_db`.`students`
(
`email_address`,
`first_name`,
`last_name`,
`address`,
`major_id`)
VALUES
(
'kevin@school.edu',
'kevin',
'Green',
'124 main St.',
1);





INSERT INTO `students_db`.`students`
(
`email_address`,
`first_name`,
`last_name`,
`address`,
`major_id`)
VALUES
(
'lynn@school.edu',
'Lynn',
'Robinson',
'345 Second St.',
1);

INSERT INTO `students_db`.`students`
(
`email_address`,
`first_name`,
`last_name`,
`address`,
`major_id`)
VALUES
(
'Nick@school.edu',
'Nick',
'Smith',
'45 York Road',
2);
INSERT INTO `students_db`.`students`
(
`email_address`,
`first_name`,
`last_name`,
`address`,
`major_id`)
VALUES
(
'Andy@school.edu',
'Andy',
'Andrews',
'600 5th Ave.',
3);
INSERT INTO `students_db`.`students`
(
`email_address`,
`first_name`,
`last_name`,
`address`,
`major_id`)
VALUES
(
'Meredith@school.edu',
'Meredith',
'Bartel',
'650 5th Ave.',
3);

INSERT INTO `students_db`.`students`
(
`email_address`,
`first_name`,
`last_name`,
`address`,
`major_id`)
VALUES
(
'Laura@school.edu',
'Laura',
'Bartel',
'lee Ave.',
2);





INSERT INTO `students_db`.`students`
(
`email_address`,
`first_name`,
`last_name`,
`address`,
`major_id`)
VALUES
(
'Evan@school.edu',
'Evan',
'Bartal',
'Ravenna Ave.',
1);



INSERT INTO `students_db`.`classes`
(
`class_name`,
`class_description`)
VALUES(
'IT1025' ,
'IT1025');
3	
INSERT INTO `students_db`.`classes`
(
`class_name`,
`class_description`)
VALUES(
'IT1050' ,
'IT1050');

INSERT INTO `students_db`.`classes`
(
`class_name`,
`class_description`)
VALUES(
'IT2351' ,
'IT2351');

INSERT INTO `students_db`.`classes`
(
`class_name`,
`class_description`)
VALUES(
'MATH2400' ,
'MATH2400');

INSERT INTO `students_db`.`classes`
(
`class_name`,
`class_description`)
VALUES(
'1025' ,
'1025');

INSERT INTO `students_db`.`classes`
(
`class_name`,
`class_description`)
VALUES(
'1050' ,
'1050');

commit;



INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(7
, 1);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(7
, 4);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(7
, 2);

INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(1
, 1);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(1
, 2);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(1
, 3);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(2
, 5);

INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(3
, 5);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(3
, 6);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(4
, 5);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(5
, 2);
INSERT INTO `students_db`.`student_classes`
(
`student_id`,
`class_id`)
VALUES
(6
, 1);


select a.student_id, email_address, first_name, last_name, address, class_name, i.major_name
 from students a
left outer join student_classes l on a.student_id = l.student_id
left outer join classes w on l.class_id = w.class_id
left outer join  majors i on i.major_id = a.major_id