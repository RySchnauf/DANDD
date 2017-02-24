-- MySQL Script generated by MySQL Workbench
-- 02/23/17 21:18:10
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
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
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Description` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Class` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `HitDie` INT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Subrace`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Subrace` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Race`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Race` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Subrace` INT NULL DEFAULT NULL,
  `Str` INT NULL,
  `Dex` INT NULL,
  `Con` INT NULL,
  `Wis` INT NULL,
  `Int` INT NULL,
  `Cha` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `Subrace_idx` (`Subrace` ASC),
  CONSTRAINT `Subrace`
    FOREIGN KEY (`Subrace`)
    REFERENCES `DungeonsAndDragons`.`Subrace` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Language` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Weapon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Weapon` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Special` INT NULL DEFAULT NULL,
  `Cost` INT NULL DEFAULT NULL,
  `Weight` INT NULL DEFAULT NULL,
  `DamageType` INT NULL DEFAULT NULL,
  `DieCount` INT NULL DEFAULT NULL,
  `DamageDie` INT NULL DEFAULT NULL,
  `VersatileDamage` INT NULL DEFAULT NULL,
  `VersatileDamageDie` INT NULL DEFAULT NULL,
  `TwoHanded` TINYINT(1) NULL DEFAULT NULL,
  `Light` TINYINT(1) NULL DEFAULT NULL,
  `Finesse` TINYINT(1) NULL DEFAULT NULL,
  `Reach` TINYINT(1) NULL DEFAULT NULL,
  `RangeShort` INT NULL DEFAULT NULL,
  `RangeLong` INT NULL DEFAULT NULL,
  `Loading` TINYINT(1) NULL DEFAULT NULL,
  `Heavy` TINYINT(1) NULL DEFAULT NULL,
  `Ammunition` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Armor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Armor` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Type` INT NULL DEFAULT NULL,
  `BaseAC` INT NULL DEFAULT NULL,
  `Weight` INT NULL DEFAULT NULL,
  `MinStr` INT NULL DEFAULT NULL,
  `Stealth` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Abilities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Abilities` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Description` VARCHAR(45) NULL DEFAULT NULL,
  `ChosenAbility` TINYINT(1) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Users` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Password` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Campaigns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Campaigns` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `DM` INT NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC),
  INDEX `DungeonMaster_idx` (`DM` ASC),
  CONSTRAINT `DungeonMaster`
    FOREIGN KEY (`DM`)
    REFERENCES `DungeonsAndDragons`.`Users` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Character`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Character` (
  `ID` INT NOT NULL,
  `CharName` VARCHAR(45) NULL DEFAULT NULL,
  `Owner` INT NULL DEFAULT NULL,
  `Campaign` INT NULL DEFAULT NULL,
  `Level` INT NULL DEFAULT NULL,
  `Race` INT NULL,
  `Subrace` INT NULL,
  `Str` INT NULL,
  `Dex` INT NULL,
  `Con` INT NULL,
  `Wis` INT NULL,
  `Int` INT NULL,
  `Cha` INT NULL,
  `Alignment` VARCHAR(45) NULL,
  `Weight` VARCHAR(45) NULL,
  `Height` VARCHAR(45) NULL,
  `Class` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `Owner_idx` (`Owner` ASC),
  INDEX `Campaign_idx` (`Campaign` ASC),
  INDEX `Class_idx` (`Class` ASC),
  INDEX `Race_idx` (`Race` ASC),
  INDEX `Subrace_idx` (`Subrace` ASC),
  CONSTRAINT `Owner`
    FOREIGN KEY (`Owner`)
    REFERENCES `DungeonsAndDragons`.`Users` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Campaign`
    FOREIGN KEY (`Campaign`)
    REFERENCES `DungeonsAndDragons`.`Campaigns` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Class`
    FOREIGN KEY (`Class`)
    REFERENCES `DungeonsAndDragons`.`Class` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Race`
    FOREIGN KEY (`Race`)
    REFERENCES `DungeonsAndDragons`.`Race` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Subrace`
    FOREIGN KEY (`Subrace`)
    REFERENCES `DungeonsAndDragons`.`Subrace` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Stat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Stat` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Skills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Skills` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Stat` INT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC),
  INDEX `Stat_idx` (`Stat` ASC),
  CONSTRAINT `Stat`
    FOREIGN KEY (`Stat`)
    REFERENCES `DungeonsAndDragons`.`Stat` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`Item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`Item` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Cost` INT NULL,
  `Weight` INT NULL,
  `Description` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`BagMapping`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`BagMapping` (
  `CharacterID` INT NOT NULL,
  `ItemID` INT NOT NULL,
  `Qty` INT NOT NULL,
  INDEX `Character_idx` (`CharacterID` ASC),
  INDEX `Item_idx` (`ItemID` ASC),
  CONSTRAINT `Character`
    FOREIGN KEY (`CharacterID`)
    REFERENCES `DungeonsAndDragons`.`Character` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Item`
    FOREIGN KEY (`ItemID`)
    REFERENCES `DungeonsAndDragons`.`Item` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`SpellMapping`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`SpellMapping` (
  `CharID` INT NULL,
  `SpellID` INT NULL,
  INDEX `Character_idx` (`CharID` ASC),
  INDEX `Spell_idx` (`SpellID` ASC),
  CONSTRAINT `Character`
    FOREIGN KEY (`CharID`)
    REFERENCES `DungeonsAndDragons`.`Character` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Spell`
    FOREIGN KEY (`SpellID`)
    REFERENCES `DungeonsAndDragons`.`Spells` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`AbilityMapping`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`AbilityMapping` (
  `ClassID` INT NOT NULL,
  `AbilityID` INT NULL,
  PRIMARY KEY (`ClassID`),
  INDEX `Ability_idx` (`AbilityID` ASC),
  CONSTRAINT `Class`
    FOREIGN KEY (`ClassID`)
    REFERENCES `DungeonsAndDragons`.`Class` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Ability`
    FOREIGN KEY (`AbilityID`)
    REFERENCES `DungeonsAndDragons`.`Abilities` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`ChosenAbility`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`ChosenAbility` (
  `ID` INT NOT NULL,
  `AbilityID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Pre-req` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`),
  INDEX `Ability_idx` (`AbilityID` ASC),
  CONSTRAINT `Ability`
    FOREIGN KEY (`AbilityID`)
    REFERENCES `DungeonsAndDragons`.`Abilities` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`AbilityCharacterMapping`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`AbilityCharacterMapping` (
  `CharacterID` INT NOT NULL,
  `AbilityID` INT NULL,
  `ChosenAbilityID` INT NULL,
  INDEX `ChosenAbility_idx` (`ChosenAbilityID` ASC),
  INDEX `Ability_idx` (`AbilityID` ASC),
  INDEX `Character_idx` (`CharacterID` ASC),
  CONSTRAINT `ChosenAbility`
    FOREIGN KEY (`ChosenAbilityID`)
    REFERENCES `DungeonsAndDragons`.`ChosenAbility` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Ability`
    FOREIGN KEY (`AbilityID`)
    REFERENCES `DungeonsAndDragons`.`Abilities` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Character`
    FOREIGN KEY (`CharacterID`)
    REFERENCES `DungeonsAndDragons`.`Character` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DungeonsAndDragons`.`ProficiencyMap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DungeonsAndDragons`.`ProficiencyMap` (
  `CharacterID` INT NOT NULL,
  `Shield` TINYINT(1) NULL,
  `LightArmor` TINYINT(1) NULL,
  `MediumArmor` TINYINT(1) NULL,
  `HeavyArmor` TINYINT(1) NULL,
  `SimpleWeapons` TINYINT(1) NULL,
  `MartialWeapons` TINYINT(1) NULL,
  PRIMARY KEY (`CharacterID`),
  CONSTRAINT `Character`
    FOREIGN KEY (`CharacterID`)
    REFERENCES `DungeonsAndDragons`.`Character` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
