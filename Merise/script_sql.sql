# 💾 Script SQL de la base de données

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Table pour stocker les informations sur les étudiants
CREATE TABLE Students(
   student_uuid UUID DEFAULT uuid_generate_v4() NOT NULL,
   student_firstname VARCHAR(50)  NOT NULL,
   student_lastname VARCHAR(50)  NOT NULL,
   birth_date DATE NOT NULL,
   street_name VARCHAR(250)  NOT NULL,
   zip_code INTEGER NOT NULL,
   country VARCHAR(50)  NOT NULL,
   student_email VARCHAR(250)  NOT NULL,
   student_password VARCHAR(250)  NOT NULL,
   PRIMARY KEY(student_uuid),
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

-- Table pour stocker les informations sur les administrateurs
CREATE TABLE Admins(
   admin_uuid UUID DEFAULT uuid_generate_v4() NOT NULL,
   admin_firstname VARCHAR(50)  NOT NULL,
   admin_lastname VARCHAR(50)  NOT NULL,
   admin_email VARCHAR(250)  NOT NULL,
   admin_password VARCHAR(250)  NOT NULL,
   PRIMARY KEY(admin_uuid),
   UNIQUE(admin_email)
);

-- Table pour stocker les informations sur les status de publication
CREATE TABLE Publishing_states(
   publishing_state_id SERIAL,
   publishing_state_type VARCHAR(50)  NOT NULL,
   PRIMARY KEY(publishing_state_id),
   UNIQUE(publishing_state_type)
);

-- Table pour stocker les informations sur le status
CREATE TABLE Status(
   status_id SERIAL,
   status_type CHAR(2)  NOT NULL,
   PRIMARY KEY(status_id),
   UNIQUE(status_type)
);

-- Table pour stocker les informations sur les formations
CREATE TABLE Courses(
   course_id SERIAL,
   course_title VARCHAR(250)  NOT NULL,
   course_description TEXT NOT NULL,
   is_valid BOOLEAN NOT NULL,
   publishing_state_id INTEGER NOT NULL,
   PRIMARY KEY(course_id),
   FOREIGN KEY(publishing_state_id) REFERENCES Publishing_states(publishing_state_id)
);

-- Table pour stocker les informations sur les modules
CREATE TABLE Blocks(
   block_id SERIAL,
   block_num INTEGER NOT NULL,
   block_title VARCHAR(50)  NOT NULL,
   pedagogical_objective VARCHAR(250)  NOT NULL,
   duration TIME NOT NULL,
   publishing_state_id INTEGER NOT NULL,
   status_id INTEGER NOT NULL,
   PRIMARY KEY(block_id),
   FOREIGN KEY(publishing_state_id) REFERENCES Publishing_states(publishing_state_id),
   FOREIGN KEY(status_id) REFERENCES Status(status_id)
);

CREATE TABLE Trainers(
   trainer_uuid UUID DEFAULT uuid_generate_v4() NOT NULL,
   trainer_code VARCHAR(50)  NOT NULL,
   trainer_firtsname VARCHAR(50)  NOT NULL,
   trainer_lastname VARCHAR(50)  NOT NULL,
   trainer_email VARCHAR(250)  NOT NULL,
   trainer_password VARCHAR(250)  NOT NULL,
   is_active BOOLEAN NOT NULL,
   admin_uuid UUID DEFAULT uuid_generate_v4() NOT NULL,
   PRIMARY KEY(trainer_uuid),
   UNIQUE(trainer_code),
   UNIQUE(trainer_email),
   FOREIGN KEY(admin_uuid) REFERENCES Admins(admin_uuid)
);

CREATE TABLE Lessons(
   lesson_id SERIAL,
   lesson_number VARCHAR(50)  NOT NULL,
   lesson_title VARCHAR(250)  NOT NULL,
   text TEXT NOT NULL,
   video_url VARCHAR(500)  NOT NULL,
   publishing_state_id INTEGER NOT NULL,
   status_id INTEGER NOT NULL,
   trainer_uuid UUID DEFAULT uuid_generate_v4() NOT NULL,
   PRIMARY KEY(lesson_id),
   FOREIGN KEY(publishing_state_id) REFERENCES Publishing_states(publishing_state_id),
   FOREIGN KEY(status_id) REFERENCES Status(status_id),
   FOREIGN KEY(trainer_uuid) REFERENCES Trainers(trainer_uuid)
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
   student_uuid UUID DEFAULT uuid_generate_v4() NOT NULL,
   PRIMARY KEY(course_id, student_uuid),
   FOREIGN KEY(course_id) REFERENCES Courses(course_id),
   FOREIGN KEY(student_uuid) REFERENCES Students(student_uuid)
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
   trainer_uuid UUID DEFAULT uuid_generate_v4() NOT NULL,
   trainer_code VARCHAR(50)  NOT NULL,
   PRIMARY KEY(block_id, trainer_uuid),
   FOREIGN KEY(block_id) REFERENCES Blocks(block_id),
   FOREIGN KEY(trainer_uuid) REFERENCES Trainers(trainer_uuid)
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
   trainer_uuid UUID DEFAULT uuid_generate_v4() NOT NULL,
   trainer_code VARCHAR(50)  NOT NULL,
   PRIMARY KEY(course_id, trainer_uuid),
   FOREIGN KEY(course_id) REFERENCES Courses(course_id),
   FOREIGN KEY(trainer_uuid) REFERENCES Trainers(trainer_uuid)
);