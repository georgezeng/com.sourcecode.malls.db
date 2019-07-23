--liquibase formatted sql

--changeset admin:63

ALTER TABLE `sub_order` 
DROP COLUMN `additional_comment`;
