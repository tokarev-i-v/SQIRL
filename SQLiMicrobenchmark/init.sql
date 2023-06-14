CREATE DATABASE sqliDB;
USE sqliDB;
CREATE USER 'server'@'db' IDENTIFIED BY 'Qazwsxedcr12@';
GRANT ALL PRIVILEGES ON sqliDB.* TO 'server'@'%';
CREATE TABLE `users` (`id` int NOT NULL AUTO_INCREMENT, `name` varchar(500) DEFAULT NULL, `pass` varchar(500) DEFAULT NULL, PRIMARY KEY (`id`), UNIQUE KEY `id_UNIQUE` (`id`));
INSERT INTO users (name, pass, id) VALUES ('user', 'password', 1);
INSERT INTO users (name, pass, id) VALUES ('user2', 'password2', 2);
SET PERSIST general_log = on;
SET PERSIST general_log_file='/var/lib/mysql/general.log';
SET PERSIST log_output = 'file';
SET PERSIST log_raw = on;
