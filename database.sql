#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.4.274
#
# OPTIONS:
#   sourcefilename=C:\Users\Stephanie\Documents\Semester 2 2016\IFB299\Parking Pernits to test.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=movedb
#   storageengine=MyISAM
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `movedb`;
USE `movedb`;

#
# Table structure for table 'Parking Fines'
#

DROP TABLE IF EXISTS `Parking Fines`;

CREATE TABLE `Parking Fines` (
  `Fine Number` INTEGER NOT NULL AUTO_INCREMENT, 
  `Date` DATETIME, 
  `Time` DATETIME, 
  `Application / Permint Number` INTEGER DEFAULT 0, 
  `Vehicle Registration Number` VARCHAR(255), 
  `Vehicle Type` VARCHAR(255), 
  `Details of Offence` LONGTEXT, 
  `Location of Offence` VARCHAR(255), 
  PRIMARY KEY (`Fine Number`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Parking Fines'
#

INSERT INTO `Parking Fines` (`Fine Number`, `Date`, `Time`, `Application / Permint Number`, `Vehicle Registration Number`, `Vehicle Type`, `Details of Offence`, `Location of Offence`) VALUES (1, '2016-09-01 00:00:00', '1899-12-30 11:00:00', 2, 'AMJ 708', 'Small Car', 'Permit Expired', 'Parking bay 89');
# 1 records

#
# Table structure for table 'User Info'
#

DROP TABLE IF EXISTS `User Info`;

CREATE TABLE `User Info` (
  `Application / Permit Number` INTEGER NOT NULL AUTO_INCREMENT, 
  `Staff or Student ID` INTEGER DEFAULT 0, 
  `Title` VARCHAR(255), 
  `First Name` VARCHAR(255), 
  `Last Name` VARCHAR(255), 
  `Date of Birth` DATETIME, 
  `Home Phone` INTEGER DEFAULT 0, 
  `Work Phone` INTEGER DEFAULT 0, 
  `Mobile Phone` INTEGER DEFAULT 0, 
  `Email Address` LONGTEXT, 
  `Department/Faculty` VARCHAR(255), 
  `Are you Applying for a visitor?` TINYINT(1) DEFAULT 0, 
  `Visitor First Name` VARCHAR(255), 
  `Visitor Last Name` VARCHAR(255), 
  `Reson for Visit` VARCHAR(255), 
  `Vehicle Type` VARCHAR(255), 
  `Vehicle Registration Number` VARCHAR(255), 
  `Vehicle Make and Model` LONGTEXT, 
  PRIMARY KEY (`Application / Permit Number`), 
  INDEX (`Staff or Student ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'User Info'
#

INSERT INTO `User Info` (`Application / Permit Number`, `Staff or Student ID`, `Title`, `First Name`, `Last Name`, `Date of Birth`, `Home Phone`, `Work Phone`, `Mobile Phone`, `Email Address`, `Department/Faculty`, `Are you Applying for a visitor?`, `Visitor First Name`, `Visitor Last Name`, `Reson for Visit`, `Vehicle Type`, `Vehicle Registration Number`, `Vehicle Make and Model`) VALUES (1, 7839281, 'Mr', 'John', 'Smith', '1960-03-10 00:00:00', 0, 38792019, 473829102, 'John.Smith@gmail.com', 'SEF', 0, NULL, NULL, NULL, 'Small Car', 'VHG 785', 'Toyota Yaris');
INSERT INTO `User Info` (`Application / Permit Number`, `Staff or Student ID`, `Title`, `First Name`, `Last Name`, `Date of Birth`, `Home Phone`, `Work Phone`, `Mobile Phone`, `Email Address`, `Department/Faculty`, `Are you Applying for a visitor?`, `Visitor First Name`, `Visitor Last Name`, `Reson for Visit`, `Vehicle Type`, `Vehicle Registration Number`, `Vehicle Make and Model`) VALUES (2, 9876989, 'Ms', 'Anna', 'Jones', '1987-08-07 00:00:00', 0, 0, 478219989, 'Anna.Jones7@hotmail.com', 'Law', 0, NULL, NULL, NULL, 'Small Car', 'AMJ 708', 'Mazda 2');
INSERT INTO `User Info` (`Application / Permit Number`, `Staff or Student ID`, `Title`, `First Name`, `Last Name`, `Date of Birth`, `Home Phone`, `Work Phone`, `Mobile Phone`, `Email Address`, `Department/Faculty`, `Are you Applying for a visitor?`, `Visitor First Name`, `Visitor Last Name`, `Reson for Visit`, `Vehicle Type`, `Vehicle Registration Number`, `Vehicle Make and Model`) VALUES (3, 24350, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `User Info` (`Application / Permit Number`, `Staff or Student ID`, `Title`, `First Name`, `Last Name`, `Date of Birth`, `Home Phone`, `Work Phone`, `Mobile Phone`, `Email Address`, `Department/Faculty`, `Are you Applying for a visitor?`, `Visitor First Name`, `Visitor Last Name`, `Reson for Visit`, `Vehicle Type`, `Vehicle Registration Number`, `Vehicle Make and Model`) VALUES (4, 2340, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `User Info` (`Application / Permit Number`, `Staff or Student ID`, `Title`, `First Name`, `Last Name`, `Date of Birth`, `Home Phone`, `Work Phone`, `Mobile Phone`, `Email Address`, `Department/Faculty`, `Are you Applying for a visitor?`, `Visitor First Name`, `Visitor Last Name`, `Reson for Visit`, `Vehicle Type`, `Vehicle Registration Number`, `Vehicle Make and Model`) VALUES (5, 23450, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
# 5 records

