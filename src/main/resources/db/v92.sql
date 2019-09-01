--liquibase formatted sql

--changeset admin:92

ALTER TABLE `express` 
ADD COLUMN `type` varchar(50) NOT NULL;