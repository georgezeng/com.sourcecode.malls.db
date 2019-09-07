--liquibase formatted sql

--changeset admin:98

ALTER TABLE `client_level_setting` 
ADD COLUMN `img_path` varchar(255) NOT NULL;