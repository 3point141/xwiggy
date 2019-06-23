CREATE DATABASE IF NOT EXISTS myusers;
USE myusers;

DROP TABLE IF EXISTS `myusers`.`users`;
CREATE TABLE `myusers`.`users`
(
  `username`  VARCHAR(45) NOT NULL,
  `password`  VARCHAR(45) NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname`  VARCHAR(45) NULL,
  `email`     VARCHAR(45) NULL,
  `address`   VARCHAR(45) NULL,
  `phone`     INT         NULL,
  PRIMARY KEY (`username`)
);

CREATE TABLE `myusers`.`foodcart` (
   `id` VARCHAR(45) NOT NULL,
   `item` VARCHAR(45) NOT NULL,
   `prince` INT NOT NULL,
   `quantity` INT NOT NULL,
   PRIMARY KEY (`id`));