# 💾 Script SQL de la base de données

-- Table pour stocker les informations sur les formations
CREATE TABLE Courses(
   course_id SERIAL,
   course_title VARCHAR(250)  NOT NULL,
   course_description TEXT NOT NULL,
   course_publishing_state VARCHAR(50)  NOT NULL,
   is_valid BOOLEAN NOT NULL,
   PRIMARY KEY(course_id)
);

-- Table pour stocker les informations sur les étudiants
CREATE TABLE Students(
   student_id CHAR(36) ,
   student_firstname VARCHAR(50)  NOT NULL,
   student_lastname VARCHAR(50)  NOT NULL,
   birth_date DATE NOT NULL,
   street_name VARCHAR(250)  NOT NULL,
   zip_code INTEGER NOT NULL,
   country VARCHAR(50)  NOT NULL,
   student_email VARCHAR(250)  NOT NULL,
   student_password VARCHAR(250)  NOT NULL,
   PRIMARY KEY(student_id),
   UNIQUE(student_email)
);

-- Table pour stocker les informations sur les images
CREATE TABLE Images(
   image_id SERIAL,
   image_name VARCHAR(255)  NOT NULL,
   path VARCHAR(500)  NOT NULL,
   PRIMARY KEY(image_id),
   UNIQUE(image_name),
   UNIQUE(path)
);

-- Table pour stocker les informations sur les tags
CREATE TABLE Tags(
   tag_title VARCHAR(50) ,
   PRIMARY KEY(tag_title)
);

-- Table pour stocker les informations sur les modules
CREATE TABLE Blocks(
   block_id SERIAL,
   block_num INTEGER NOT NULL,
   block_title VARCHAR(50)  NOT NULL,
   pedagogical_objective VARCHAR(250)  NOT NULL,
   block_status VARCHAR(2)  NOT NULL,
   block_publishing_state VARCHAR(50)  NOT NULL,
   duration TIME NOT NULL,
   PRIMARY KEY(block_id)
);

-- Table pour stocker les informations sur les administrateurs
CREATE TABLE Admins(
   admin_id CHAR(36) ,
   admin_firstname VARCHAR(50)  NOT NULL,
   admin_lastname VARCHAR(50)  NOT NULL,
   admin_email VARCHAR(250)  NOT NULL,
   admin_password VARCHAR(250)  NOT NULL,
   PRIMARY KEY(admin_id),
   UNIQUE(admin_email)
);

CREATE TABLE Trainers(
   trainer_id CHAR(36) ,
   trainer_code VARCHAR(50)  NOT NULL,
   trainer_firtsname VARCHAR(50)  NOT NULL,
   trainer_lastname VARCHAR(50)  NOT NULL,
   trainer_email VARCHAR(250)  NOT NULL,
   trainer_password VARCHAR(250)  NOT NULL,
   is_active BOOLEAN NOT NULL,
   admin_id CHAR(36)  NOT NULL,
   PRIMARY KEY(trainer_id),
   UNIQUE(trainer_code),
   UNIQUE(trainer_email),
   FOREIGN KEY(admin_id) REFERENCES Admins(admin_id)
);

CREATE TABLE Lessons(
   lesson_id SERIAL,
   lesson_number VARCHAR(50)  NOT NULL,
   lesson_title VARCHAR(250)  NOT NULL,
   text TEXT NOT NULL,
   video_url VARCHAR(500)  NOT NULL,
   lesson_status CHAR(2) ,
   lesson_publishing_state VARCHAR(50)  NOT NULL,
   trainer_id CHAR(36)  NOT NULL,
   PRIMARY KEY(lesson_id),
   FOREIGN KEY(trainer_id) REFERENCES Trainers(trainer_id)
);

-- Table pour gérer la relation entre les leçons et les modules
CREATE TABLE Lessons_Blocks(
   lesson_id INTEGER,
   block_id INTEGER,
   PRIMARY KEY(lesson_id, block_id),
   FOREIGN KEY(lesson_id) REFERENCES Lessons(lesson_id),
   FOREIGN KEY(block_id) REFERENCES Blocks(block_id)
);

-- Table pour stocker les informations sur les modules
CREATE TABLE Courses_Blocks(
   course_id INTEGER,
   block_id INTEGER,
   PRIMARY KEY(course_id, block_id),
   FOREIGN KEY(course_id) REFERENCES Courses(course_id),
   FOREIGN KEY(block_id) REFERENCES Blocks(block_id)
);

-- Table pour gérer la relation entre les apprenants et les formations
CREATE TABLE Students_Courses(
   course_id INTEGER,
   student_id CHAR(36) ,
   PRIMARY KEY(course_id, student_id),
   FOREIGN KEY(course_id) REFERENCES Courses(course_id),
   FOREIGN KEY(student_id) REFERENCES Students(student_id)
);

-- Table pour stocker les informations sur les images
CREATE TABLE Lessons_Images(
   lesson_id INTEGER,
   image_id INTEGER,
   PRIMARY KEY(lesson_id, image_id),
   FOREIGN KEY(lesson_id) REFERENCES Lessons(lesson_id),
   FOREIGN KEY(image_id) REFERENCES Images(image_id)
);

-- Table pour gérer la relation entre les formateurs et les modules
CREATE TABLE Blocks_Trainers(
   block_id INTEGER,
   trainer_id CHAR(36) ,
   PRIMARY KEY(block_id, trainer_id),
   FOREIGN KEY(block_id) REFERENCES Blocks(block_id),
   FOREIGN KEY(trainer_id) REFERENCES Trainers(trainer_id)
);

-- Table pour gérer la relation entre les formations et les tags
CREATE TABLE Courses_Tags(
   course_id INTEGER,
   tag_title VARCHAR(50) ,
   PRIMARY KEY(course_id, tag_title),
   FOREIGN KEY(course_id) REFERENCES Courses(course_id),
   FOREIGN KEY(tag_title) REFERENCES Tags(tag_title)
);

-- Table pour gérer la relation entre les formateurs et les formations
CREATE TABLE Trainers_Courses(
   course_id INTEGER,
   trainer_id CHAR(36) ,
   PRIMARY KEY(course_id, trainer_id),
   FOREIGN KEY(course_id) REFERENCES Courses(course_id),
   FOREIGN KEY(trainer_id) REFERENCES Trainers(trainer_id)
);