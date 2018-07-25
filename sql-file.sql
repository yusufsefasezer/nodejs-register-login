CREATE DATABASE IF NOT EXISTS user;

USE user;

CREATE TABLE IF NOT EXISTS `users` (
	user_id int(11) NOT NULL AUTO_INCREMENT,
	user_email varchar(50) NOT NULL,
	user_pass varchar(32) NOT NULL,
	user_fname varchar(50) NOT NULL,
	CONSTRAINT PK_user_id PRIMARY KEY(user_id),
	CONSTRAINT UK_user_email UNIQUE(user_email)
);

INSERT INTO users VALUES(1, 'yusufsezer@mail.com', MD5('123456'), 'Yusuf SEZER');