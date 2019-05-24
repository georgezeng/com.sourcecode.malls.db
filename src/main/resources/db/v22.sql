--liquibase formatted sql

--changeset admin:22


ALTER TABLE `client` 
ADD COLUMN `sex` varchar(20) NULL,
ADD COLUMN `birthday` date NULL;