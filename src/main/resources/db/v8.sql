--liquibase formatted sql

--changeset admin:8

ALTER TABLE `authority` 
MODIFY COLUMN `code` varchar(255) NOT NULL;

ALTER TABLE `merchant_authority` 
MODIFY COLUMN `code` varchar(255) NOT NULL;