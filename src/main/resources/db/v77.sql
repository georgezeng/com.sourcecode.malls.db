--liquibase formatted sql

--changeset admin:77

ALTER TABLE `client` 
ADD COLUMN `logged_in` bit(1) NOT NULL;

