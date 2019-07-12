--liquibase formatted sql

--changeset admin:40

ALTER TABLE `sub_order` 
ADD COLUMN `additional_comment` bit(1) NOT NULL;
