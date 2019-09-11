--liquibase formatted sql

--changeset admin:105

ALTER TABLE `client` 
MODIFY COLUMN `nickname` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NULL;