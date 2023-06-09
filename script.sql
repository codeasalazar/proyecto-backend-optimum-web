CREATE DATABASE optimumweb;


CREATE TABLE users ( id_user serial primary key not null,
                    username VARCHAR(100) not null,
                    password VARCHAR(100) not null,
                    email VARCHAR(100) not null,
                    name_user VARCHAR(100) not null,
                    created_at timestamp default now()
                    );

CREATE TABLE role ( id_role serial primary key not null,
                    name_role VARCHAR(100) not null,
                    created_at timestamp default now()
                    );

CREATE TABLE user_role ( id_user_role serial primary key not null,
                        id_user int not null,
                        id_role int not null,
                        created_at timestamp default now(),
                        FOREIGN KEY (id_user) REFERENCES users(id_user),
                        FOREIGN KEY (id_role) REFERENCES role(id_role)
                        );

CREATE TABLE course ( id_course serial primary key not null,
                    name_course VARCHAR(100) not null,
                    created_at timestamp default now(),
                    miniature   VARCHAR(100) not null,
                    description VARCHAR(100) not null
                    );

CREATE TABLE user_course ( id_user_course serial primary key not null,
                        id_user int not null,
                        id_course int not null,
                        created_at timestamp default now(),
                        FOREIGN KEY (id_user) REFERENCES users(id_user),
                        FOREIGN KEY (id_course) REFERENCES course(id_course)
                        );

INSERT INTO role (name_role) VALUES ('admin');
INSERT INTO role (name_role) VALUES ('user');
INSERT INTO users (username, password, email, name_user) VALUES ('admin', 'admin', 'admin@gmail.com', 'admin');
INSERT INTO users (username, password, email, name_user) VALUES ('user', 'user', 'user@gmail.com', 'user');
INSERT INTO users (username, password, email, name_user) VALUES ('user2', 'user2', 'user2@gmail.com', 'user');
INSERT INTO user_role (id_user, id_role) VALUES (1, 1);
INSERT INTO user_role (id_user, id_role) VALUES (2, 2);
INSERT INTO user_role (id_user, id_role) VALUES (3, 2);
Insert INTO course (name_course, miniature, description) VALUES ('Curso de JavaScript', 'https://ibb.co/2kyHQJp', 'Curso de JavaScript');
Insert INTO course (name_course, miniature, description) VALUES ('Curso de Python', 'https://ibb.co/688pjH9', 'Curso de Python');
Insert INTO course (name_course, miniature, description) VALUES ('Curso de Java', 'https://ibb.co/gr5p929', 'Curso de Java');
Insert INTO user_course (id_user, id_course) VALUES (2, 1);
Insert INTO user_course (id_user, id_course) VALUES (2, 2);
Insert INTO user_course (id_user, id_course) VALUES (2, 3);
Insert INTO user_course (id_user, id_course) VALUES (3, 1);

