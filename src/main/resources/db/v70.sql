--liquibase formatted sql

--changeset admin:70

ALTER TABLE `parent_order` 
DROP COLUMN `aftersale_applied_nums`;
