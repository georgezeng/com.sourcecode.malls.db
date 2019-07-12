--liquibase formatted sql

--changeset admin:41

ALTER TABLE `parent_order` 
DROP COLUMN `comment`;

ALTER TABLE `sub_order` 
ADD COLUMN `comment` bit(1) NOT NULL;
