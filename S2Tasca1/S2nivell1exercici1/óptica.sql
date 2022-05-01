-- MySQL Workbench Synchronization
-- Generated: 2022-05-01 12:58
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Julio

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `mydb`.`proveïdor` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
CHANGE COLUMN `Proveïdor_tel` `Proveïdor_tel` INT(10) NOT NULL ,
CHANGE COLUMN `Proveïdor_fax` `Proveïdor_fax` INT(9) NOT NULL ;

ALTER TABLE `mydb`.`ulleres` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `mydb`.`clients` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
CHANGE COLUMN `id_client_recomana` `id_client_recomana` INT(11) NULL DEFAULT NULL ;

ALTER TABLE `mydb`.`empleat` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `mydb`.`marca_ulleres` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `mydb`.`marca_ulleres_has_ulleres` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `mydb`.`óptica` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `mydb`.`empleat_venda_ulleres` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
