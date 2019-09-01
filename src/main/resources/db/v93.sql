--liquibase formatted sql

--changeset admin:93

ALTER TABLE `express` 
MODIFY COLUMN `company` varchar(50) NULL,
MODIFY COLUMN `number` varchar(255) NULL;
