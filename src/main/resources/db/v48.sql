--liquibase formatted sql

--changeset admin:48

ALTER TABLE `express` 
ADD COLUMN `express_time` datetime NOT NULL;