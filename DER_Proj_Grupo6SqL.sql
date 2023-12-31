-- MySQL Script generated by MySQL Workbench
-- Wed Sep 27 16:07:30 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_comercio_com_causa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_comercio_com_causa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_comercio_com_causa` DEFAULT CHARACTER SET utf8 ;
USE `db_comercio_com_causa` ;

-- -----------------------------------------------------
-- Table `db_comercio_com_causa`.``
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_comercio_com_causa`.`` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_comercio_com_causa`.`tb_categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_comercio_com_causa`.`tb_categories` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_comercio_com_causa`.`tb_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_comercio_com_causa`.`tb_users` (
  `id` BIGINT NOT NULL,
  `CPF` VARCHAR(11) NULL,
  `CNPJ` VARCHAR(14) NULL,
  `CEP` VARCHAR(8) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `about` TEXT NULL,
  `gender` VARCHAR(100) NULL,
  `ethnicity` VARCHAR(100) NULL,
  `born` DATE NULL,
  `image_url` VARCHAR(255) NULL,
  `type` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE,
  UNIQUE INDEX `CNPJ_UNIQUE` (`CNPJ` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_comercio_com_causa`.`tb_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_comercio_com_causa`.`tb_products` (
  `id` BIGINT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT NULL,
  `price` DECIMAL NOT NULL,
  `image_url` VARCHAR(255) NULL,
  `category_id` BIGINT NOT NULL,
  ` user_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_products_tb_categories_idx` (`category_id` ASC) VISIBLE,
  INDEX `fk_tb_products_tb_users1_idx` (` user_id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  CONSTRAINT `fk_tb_products_tb_categories`
    FOREIGN KEY (`category_id`)
    REFERENCES `db_comercio_com_causa`.`tb_categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_products_tb_users1`
    FOREIGN KEY (` user_id`)
    REFERENCES `db_comercio_com_causa`.`tb_users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `db_comercio_com_causa` ;

-- -----------------------------------------------------
-- Placeholder table for view `db_comercio_com_causa`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_comercio_com_causa`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `db_comercio_com_causa`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_comercio_com_causa`.`view1`;
USE `db_comercio_com_causa`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
