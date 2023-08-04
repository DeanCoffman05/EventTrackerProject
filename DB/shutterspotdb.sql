-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema shutterspotdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `shutterspotdb` ;

-- -----------------------------------------------------
-- Schema shutterspotdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shutterspotdb` DEFAULT CHARACTER SET utf8 ;
USE `shutterspotdb` ;

-- -----------------------------------------------------
-- Table `photo_spot`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `photo_spot` ;

CREATE TABLE IF NOT EXISTS `photo_spot` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS shutterspot@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'shutterspot'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'shutterspot'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `photo_spot`
-- -----------------------------------------------------
START TRANSACTION;
USE `shutterspotdb`;
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (1, 'Cay Creek Park', NULL, 'Midway', 'GA');

COMMIT;

