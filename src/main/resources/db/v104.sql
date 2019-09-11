--liquibase formatted sql

--changeset admin:104

ALTER TABLE `aftersale_application` 
MODIFY COLUMN `description` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL;