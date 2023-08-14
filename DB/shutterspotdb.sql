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
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (1, 'Cay Creek Park', 'Cay Creek Road ', 'Midway', 'GA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (51, 'Golden Gate Viewpoint', '123 Bridge St.', 'San Francisco', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (2, 'Statue of Liberty Spot', '234 Liberty Ln.', 'New York', 'NY');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (3, 'Grand Canyon East Rim', '345 Canyon Rd.', 'Flagstaff', 'AZ');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (4, 'Everglades Panorama', '456 Swamp St.', 'Miami', 'FL');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (5, 'Mount Rainier Base', '567 Mountain Dr.', 'Tacoma', 'WA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (6, 'Big Sur Coastline', '678 Ocean Ave.', 'Monterey', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (7, 'Garden of the Gods', '789 Park Pl.', 'Colorado Springs', 'CO');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (8, 'Zion Cliffside', '890 Cliff Dr.', 'Springdale', 'UT');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (9, 'Bryce Canyon Hoodoos', '901 Rock Rd.', 'Bryce', 'UT');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (10, 'Arches Delicate Arch', '112 Arch Ave.', 'Moab', 'UT');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (11, 'Olympic Peninsula', '123 Rainforest Rd.', 'Port Angeles', 'WA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (12, 'Yellowstone Geyser', '234 Hot Springs St.', 'Cheyenne', 'WY');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (13, 'Smoky Mountains View', '345 Mountain Pass', 'Gatlinburg', 'TN');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (14, 'Great Sand Dunes', '456 Desert Dr.', 'Alamosa', 'CO');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (15, 'Acadia Seaside', '567 Coast Rd.', 'Bar Harbor', 'ME');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (16, 'Rocky Mountains Peak', '678 Peak Ln.', 'Boulder', 'CO');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (17, 'Redwood Forest', '789 Tall Tree St.', 'Eureka', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (18, 'Shenandoah Valley', '890 Valley Rd.', 'Front Royal', 'VA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (19, 'Death Valley Dunes', '901 Sand St.', 'Las Vegas', 'NV');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (20, 'Glacier Park View', '112 Ice Ave.', 'Kalispell', 'MT');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (21, 'Joshua Tree Landscape', '123 Joshua St.', 'Twentynine Palms', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (22, 'Crater Lake Rim', '234 Lake Ln.', 'Klamath Falls', 'OR');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (23, 'Badlands Canyons', '345 Plateau Pl.', 'Rapid City', 'SD');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (24, 'Petrified Forest', '456 Ancient Wood Rd.', 'Holbrook', 'AZ');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (25, 'Lake Tahoe Vista', '567 Lake Dr.', 'Reno', 'NV');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (26, 'Denali Summit', '678 Summit St.', 'Fairbanks', 'AK');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (27, 'Great Basin Starry Night', '789 Dark Sky Dr.', 'Baker', 'NV');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (28, 'Sequoia Giant Trees', '890 Big Tree Rd.', 'Visalia', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (29, 'Haleakala Crater', '901 Volcano St.', 'Kahului', 'HI');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (30, 'Isle Royale Silence', '112 Island Ln.', 'Houghton', 'MI');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (31, 'Congaree Swamp', '123 Bog St.', 'Columbia', 'SC');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (32, 'Big Bend River', '234 River Rd.', 'Terlingua', 'TX');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (33, 'Lassen Volcanic', '345 Lava Ln.', 'Redding', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (34, 'Mammoth Cave Entrance', '456 Cave Rd.', 'Bowling Green', 'KY');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (35, 'Voyageurs Lakes', '567 Lakeview Dr.', 'International Falls', 'MN');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (36, 'Hot Springs Bathhouse', '678 Spring St.', 'Hot Springs', 'AR');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (37, 'Black Canyon', '789 Deep Gorge Rd.', 'Montrose', 'CO');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (38, 'Saguaro Desert', '890 Cactus Ln.', 'Tucson', 'AZ');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (39, 'Channel Islands Coast', '901 Island Dr.', 'Ventura', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (40, 'Cuyahoga Valley Scenic', '112 River Rd.', 'Cleveland', 'OH');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (41, 'Biscayne Coral Reef', '123 Ocean Dr.', 'Miami', 'FL');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (42, 'Guadalupe Peak', '234 Mountain Rd.', 'Salt Flat', 'TX');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (43, 'Carlsbad Caverns Entrance', '345 Cave Dr.', 'Carlsbad', 'NM');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (44, 'Dry Tortugas Fort', '456 Island Fort Rd.', 'Key West', 'FL');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (45, 'Great Smoky Mountains', '567 Smoky Rd.', 'Cherokee', 'NC');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (46, 'Pinnacles Rock Formation', '678 Stone Rd.', 'Soledad', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (47, 'Wrangell-St. Elias Glaciers', '789 Glacier Ln.', 'Copper Center', 'AK');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (48, 'Kings Canyon Depths', '890 Canyon Dr.', 'Fresno', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (49, 'Yosemite El Capitan', '901 Granite Rd.', 'Merced', 'CA');
INSERT INTO `photo_spot` (`id`, `name`, `address`, `city`, `state`) VALUES (50, 'Wind Cave Boxwork', '112 Cave St.', 'Hot Springs', 'SD');

COMMIT;

