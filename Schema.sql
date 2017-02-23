-- MySQL Script generated by MySQL Workbench
-- 02/17/17 17:55:33
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema DungeonsAndDragons
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DungeonsAndDragons
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DungeonsAndDragons` DEFAULT CHARACTER SET utf8 ;
USE `DungeonsAndDragons` ;

-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`MagicSchool`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`MagicSchool` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `School` VARCHAR(45) NOT NULL DEFAULT 'No School',
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Spells`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Spells` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL DEFAULT 'No Name',
  `Level` INT NOT NULL DEFAULT 0,
  `Range` INT NOT NULL DEFAULT 0,
  `Duration` VARCHAR(45) NOT NULL DEFAULT '?',
  `Components` VARCHAR(45) NOT NULL DEFAULT '?',
  `CastingTime` VARCHAR(45) NOT NULL DEFAULT '?',
  `Description` TEXT NOT NULL DEFAULT 'No Description',
  `Bard` TINYINT(1) NOT NULL DEFAULT 0,
  `Cleric` TINYINT(1) NOT NULL DEFAULT 0,
  `Druid` TINYINT(1) NOT NULL DEFAULT 0,
  `Paladin` TINYINT(1) NOT NULL DEFAULT 0,
  `Ranger` TINYINT(1) NOT NULL DEFAULT 0,
  `Sorcerer` TINYINT(1) NOT NULL DEFAULT 0,
  `Warlock` TINYINT(1) NOT NULL DEFAULT 0,
  `Wizard` TINYINT(1) NOT NULL DEFAULT 0,
  `School` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC),
  INDEX `School_idx` (`School` ASC),
  CONSTRAINT `School`
    FOREIGN KEY (`School`)
    REFERENCES `DungeonsAndDragons`.`MagicSchool` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Feats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Feats` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Class` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Race`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Race` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Subrace` INT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Language` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Weapon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Weapon` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Weight` INT NULL,
  `DamageType` INT NULL,
  `DamageDie` INT NULL,
  `VersatileDamage` INT NULL,
  `TwoHanded` TINYINT(1) NULL,
  `Light` TINYINT(1) NULL,
  `Finesse` TINYINT(1) NULL,
  `Reach` TINYINT(1) NULL,
  `RangeMin` INT NULL,
  `Loading` INT NULL,
  `Heavy` TINYINT(1) NULL,
  `Special` TINYINT(1) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Armor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Armor` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Type` INT NULL,
  `BaseAC` INT NULL,
  `Weight` INT NULL,
  `MinStr` INT NULL,
  `Stealth` TINYINT(1) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Abilities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Abilities` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Character`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Character` (
  `ID` INT NOT NULL,
  `CharName` VARCHAR(45) NULL,
  `Owner` INT NULL,
  `Campaign` INT NULL,
  `Level` INT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Skills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Skills` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Modifier` INT NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Campaigns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Campaigns` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `DM` INT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Users` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Subrace`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Subrace` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
