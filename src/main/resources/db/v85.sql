--liquibase formatted sql

--changeset admin:85

ALTER TABLE `client_points_journal` 
ADD COLUMN `balance_type` varchar(255) NOT NULL,
ADD COLUMN `remark` varchar(255) NULL;

