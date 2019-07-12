--liquibase formatted sql

--changeset admin:39

ALTER TABLE `sub_order` 
DROP COLUMN `deleted`;

ALTER TABLE `parent_order` 
ADD COLUMN `comment` bit(1) NOT NULL,
ADD COLUMN `deleted` bit(1) NOT NULL;