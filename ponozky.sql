SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `PujcovnaPonozek` ;
CREATE SCHEMA IF NOT EXISTS `PujcovnaPonozek` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci ;
USE `PujcovnaPonozek` ;

-- -----------------------------------------------------
-- Table `PujcovnaPonozek`.`Barva`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PujcovnaPonozek`.`Barva` (
  `idBarva` INT NOT NULL AUTO_INCREMENT ,
  `Barva` VARCHAR(45) NULL ,
  PRIMARY KEY (`idBarva`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PujcovnaPonozek`.`Ponozka`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PujcovnaPonozek`.`Ponozka` (
  `idPonozka` INT NOT NULL AUTO_INCREMENT ,
  `znacka` VARCHAR(45) NULL ,
  `model` VARCHAR(45) NULL ,
  `velikost` TINYINT(4) NULL ,
  `Barva_idBarva` INT NOT NULL ,
  PRIMARY KEY (`idPonozka`, `Barva_idBarva`) ,
  INDEX `fk_Ponozka_Barva1` (`Barva_idBarva` ASC) ,
  CONSTRAINT `fk_Ponozka_Barva1`
    FOREIGN KEY (`Barva_idBarva` )
    REFERENCES `PujcovnaPonozek`.`Barva` (`idBarva` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PujcovnaPonozek`.`Zakaznik`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PujcovnaPonozek`.`Zakaznik` (
  `idZakaznik` INT NOT NULL AUTO_INCREMENT ,
  `Jmeno` VARCHAR(45) NULL ,
  `Prijmeni` VARCHAR(45) NULL ,
  `telCislo` VARCHAR(16) NULL ,
  PRIMARY KEY (`idZakaznik`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PujcovnaPonozek`.`Obsluhujici`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PujcovnaPonozek`.`Obsluhujici` (
  `idObsluhujici` INT NOT NULL AUTO_INCREMENT ,
  `Jmeno` VARCHAR(45) NULL ,
  `Prijmeni` VARCHAR(45) NULL ,
  `telCislo` VARCHAR(16) NULL ,
  PRIMARY KEY (`idObsluhujici`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PujcovnaPonozek`.`Vypujcka`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PujcovnaPonozek`.`Vypujcka` (
  `idVypujcka` INT NOT NULL AUTO_INCREMENT ,
  `datumZapujceni` DATETIME NULL ,
  `datumVraceni` DATETIME NULL ,
  `cena` VARCHAR(45) NULL ,
  `Zakaznik_idZakaznik` INT NOT NULL ,
  `Obsluhujici_idObsluhujici` INT NOT NULL ,
  PRIMARY KEY (`idVypujcka`, `Zakaznik_idZakaznik`, `Obsluhujici_idObsluhujici`) ,
  INDEX `fk_Vypujcka_Zakaznik1` (`Zakaznik_idZakaznik` ASC) ,
  INDEX `fk_Vypujcka_Obsluhujici1` (`Obsluhujici_idObsluhujici` ASC) ,
  CONSTRAINT `fk_Vypujcka_Zakaznik1`
    FOREIGN KEY (`Zakaznik_idZakaznik` )
    REFERENCES `PujcovnaPonozek`.`Zakaznik` (`idZakaznik` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Vypujcka_Obsluhujici1`
    FOREIGN KEY (`Obsluhujici_idObsluhujici` )
    REFERENCES `PujcovnaPonozek`.`Obsluhujici` (`idObsluhujici` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PujcovnaPonozek`.`ZapujcenaPonozka`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PujcovnaPonozek`.`ZapujcenaPonozka` (
  `idZapujcenaPonozka` INT NOT NULL AUTO_INCREMENT ,
  `Vypujcka_idVypujcka` INT NOT NULL ,
  `Vypujcka_Zakaznik_idZakaznik` INT NOT NULL ,
  `Vypujcka_Obsluhujici_idObsluhujici` INT NOT NULL ,
  `Ponozka_idPonozka` INT NOT NULL ,
  PRIMARY KEY (`idZapujcenaPonozka`, `Vypujcka_idVypujcka`, `Vypujcka_Zakaznik_idZakaznik`, `Vypujcka_Obsluhujici_idObsluhujici`, `Ponozka_idPonozka`) ,
  INDEX `fk_ZapujcenaPonozka_Vypujcka1` (`Vypujcka_idVypujcka` ASC, `Vypujcka_Zakaznik_idZakaznik` ASC, `Vypujcka_Obsluhujici_idObsluhujici` ASC) ,
  INDEX `fk_ZapujcenaPonozka_Ponozka1` (`Ponozka_idPonozka` ASC) ,
  CONSTRAINT `fk_ZapujcenaPonozka_Vypujcka1`
    FOREIGN KEY (`Vypujcka_idVypujcka` , `Vypujcka_Zakaznik_idZakaznik` , `Vypujcka_Obsluhujici_idObsluhujici` )
    REFERENCES `PujcovnaPonozek`.`Vypujcka` (`idVypujcka` , `Zakaznik_idZakaznik` , `Obsluhujici_idObsluhujici` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ZapujcenaPonozka_Ponozka1`
    FOREIGN KEY (`Ponozka_idPonozka` )
    REFERENCES `PujcovnaPonozek`.`Ponozka` (`idPonozka` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
