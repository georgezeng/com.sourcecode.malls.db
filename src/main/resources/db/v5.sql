--liquibase formatted sql

--changeset admin:5

ALTER TABLE `merchant_role` 
ADD COLUMN `hidden` bit(1) NOT NULL;

ALTER TABLE `role` 
ADD COLUMN `hidden` bit(1) NOT NULL;