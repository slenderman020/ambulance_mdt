USE `essentialmode`;

CREATE TABLE `user_ambulance_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`mugshot_url` varchar(255) DEFAULT NULL,
	`bail` bit DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `vehicle_ambulance_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`plate` varchar(255) DEFAULT NULL,
	`stolen` bit DEFAULT 0,
	`notes` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `ambulance_user_convictions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`offense` varchar(255) DEFAULT NULL,
	`count` int(11) DEFAULT NULL,
	
	PRIMARY KEY (`id`)
);

CREATE TABLE `ambulance_mdt_reports` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `charges` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `ambulance_mdt_warrants` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	`char_id` int(11) DEFAULT NULL,
	`report_id` int(11) DEFAULT NULL,
	`report_title` varchar(255) DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	`expire` varchar(255) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);


CREATE TABLE `fine_types_ambulance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_ambulance` (label, amount, category) VALUES
	('Control Medico Rutinario',1,0),
	('Control Medico No Rutinario',1,0),
	('Examen por motivos médico-legales',1,0),
	('Herida menor en estremidad',1,0),
	('Herida menor en torso',1,0),
	('Herida menor en cabeza',1,0),
	('Otalgia',1,0),
	('Ansiedad',1,0),
	('Tos',1,0),
	('Crisis epiléptica',1,0),
	('Cuerpo extraño en parte especificada',1,0),
	('Crisis de agresividad',1,0),
	('Dermatitis',1,0),
	('Fiebre',1,0),
	('Fractura',1,0),
	('Mialgia',1,0),
	('Deshidratación',1,0),
	('Palpitaciones',1,0),
	('Encefalitis',1,0),
	('Contusion cerebral',1,1),
	('Contusion',1,1),
	('Perdida de sangre',1,1),
	('Perdida de gran cantidad de sangre',1,1),
	('Perdida de capacidades locutoras',1,1),
	('Vómitos',1,1),
	('Cefalea',1,1),
	('Bronquitis',1,1),
	('Infeccion Estomacal',1,1),
	('Mordedura de perro',1,1),
	('Mordedura de otro tipo de animal',1,1),
	('Deterioro motor',1,1),
	('Deterioro fisico',1,1),
	('Ingesta/Intoxicación accidental por fármacos',1,1),
	('Herida grave en cabeza',1,2),
	('Herida grave en torso',1,2),
	('Herida grave en estremidad',1,2),
	('Herida causada por impacto de bala',1,2),
	('Síndrome confusional agudo',1,2),
	('Trauma Psicologico',1,2),
	('Convulsión',1,2),
	('Melena',1,2),
	('Ulcera Corneal',1,2),
	('Politraumatismo',1,3),
	('Estado de Coma',1,3),
	('Ingresa cadáver',1,3),
	('Fallecimiento',1,3)
;

