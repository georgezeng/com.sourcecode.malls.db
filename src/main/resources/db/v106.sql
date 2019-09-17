--liquibase formatted sql

--changeset admin:106

ALTER TABLE `client` 
ADD COLUMN `invite_members` int(11) NOT NULL;

ALTER TABLE `client_level_setting` 
ADD COLUMN `up_to_members` int(11) NOT NULL;