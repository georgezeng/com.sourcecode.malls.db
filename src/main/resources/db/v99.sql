--liquibase formatted sql

--changeset admin:99

ALTER TABLE `article` 
ADD COLUMN `hidden` bit(1) NOT NULL;