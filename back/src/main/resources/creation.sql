CREATE TABLE `world.`users`(
  `username` VARCHAR(32) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `role` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`username`));

CREATE TABLE `world`.`atmosphericdata` (
  `hour` VARCHAR(32) NOT NULL,
  `temperature` INT(10) NOT NULL,
  `pressure` INT(10) NOT NULL,
  `huimdity` INT(10) NOT NULL,
  `airVelocity` INT(10) NOT NULL,
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`));

CREATE TABLE `world`.`day` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `model.day` VARCHAR(32) NULL,
  `atmosphericdata` INT(10) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `world`.`forecast` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `model.day` INT(10) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `world`.`history` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `model.day` INT(10) NOT NULL,
  PRIMARY KEY (`id`));