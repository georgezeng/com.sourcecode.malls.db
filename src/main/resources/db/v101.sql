--liquibase formatted sql

--changeset admin:101

ALTER TABLE `parent_order` 
ADD COLUMN `discount` decimal(20, 2) NOT NULL;