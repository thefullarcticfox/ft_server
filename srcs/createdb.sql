CREATE DATABASE serverdb;

CREATE USER 'salec'@'localhost' IDENTIFIED BY 'salec42';
GRANT ALL PRIVILEGES ON serverdb.* TO 'salec'@'localhost';
FLUSH PRIVILEGES;

USE serverdb;
CREATE TABLE strokesLP (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(29) NOT NULL,
	ReleaseDate DATE NOT NULL
	) AUTO_INCREMENT = 1;
INSERT INTO strokesLP(Name, ReleaseDate) VALUES ('Is This It', '2001-10-09');
INSERT INTO strokesLP(Name, ReleaseDate) VALUES ('Room of Fire', '2003-10-28');
INSERT INTO strokesLP(Name, ReleaseDate) VALUES ('First Impressions of Earth', '2005-12-30');
INSERT INTO strokesLP(Name, ReleaseDate) VALUES ('Angles', '2011-03-22');
INSERT INTO strokesLP(Name, ReleaseDate) VALUES ('Comedown Machine', '2013-03-26');
INSERT INTO strokesLP(Name, ReleaseDate) VALUES ('The New Abnormal', '2020-04-10');
