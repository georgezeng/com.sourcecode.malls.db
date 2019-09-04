--liquibase formatted sql

--changeset admin:97

ALTER TABLE `article` 
MODIFY COLUMN `content` longtext NOT NULL;