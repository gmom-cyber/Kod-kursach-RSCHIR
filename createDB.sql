CREATE DATABASE peresdachic;
USE peresdachic;

CREATE TABLE peresdachi 
(
	id_pers INTEGER AUTO_INCREMENT,
	data_peres date,
	time_peres varchar(30),
    prepod varchar(50),
	auditoria varchar(50),
    predmet varchar(50),
    grups text,
	PRIMARY KEY (id_pers)
);

CREATE TABLE voprosi 
(
	id_vop INTEGER AUTO_INCREMENT,
	first_name varchar(30),
	email varchar(30),
    vopros text,
	PRIMARY KEY (id_vop)
);

ALTER TABLE peresdachi CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE voprosi CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;

#ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20

INSERT INTO peresdachi VALUES (NULL,'2022-03-10', '14:20:00', 'Карпов Д.А', 'А-417', 'Информатика(экз)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-11', '12:50:00', 'Смирнов С.С.', 'A-17', 'История(экз)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-13', '09:00:00', 'Сплю Н.Я.', 'A-18', 'Физика(экз)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-14', '10:40:00', 'Белкин А. Е.', 'A-19', 'Алгнбра(экз)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-15', '16:20:00', 'Васильев А. Д.', 'A-10', 'Мат. Анализ(экз)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-17', '12:50:00', 'Щербакова С. В.', 'A-12', 'ООП(экз)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-22', '14:20:00', 'Новикова А. М.', 'A-10', 'Ин. Яз(зач)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-23', '18:00:00', 'Фокина С. А.', 'A-17', 'Физика(зач)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-26', '18:00:00', 'Куприянова А. Г.', 'A-19', 'Физ-ра(зач)','ИКБО-12-20, ИКБО-14-20, ИКБО-15-20, ИКБО-13-20');

#ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20

INSERT INTO peresdachi VALUES (NULL,'2022-03-10', '12:40:00', 'Карпов Д.А', 'А-417', 'Информатика(экз)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-11', '09:50:00', 'Смирнов С.С.', 'A-17', 'История(экз)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-13', '10:40:00', 'Сплю Н.Я.', 'A-18', 'Физика(экз)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-14', '12:40:00', 'Белкин А. Е.', 'A-15', 'Алгнбра(экз)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-15', '18:00:00', 'Васильев А. Д.', 'A-16', 'Мат. Анализ(экз)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-17', '09:00:00', 'Щербакова С. В.', 'A-14', 'ООП(экз)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-22', '09:30:00', 'Новикова А. М.', 'A-17', 'Ин. Яз(зач)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-23', '16:20:00', 'Фокина С. А.', 'A-12', 'Физика(зач)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');
INSERT INTO peresdachi VALUES (NULL,'2022-03-26', '16:20:00', 'Куприянова А. Г.', 'A-19', 'Физ-ра(зач)','ИКБО-16-20, ИКБО-17-20, ИКБО-18-20, ИКБО-19-20');