--liquibase formatted sql

--changeset admin:113

ALTER TABLE `parent_order` 
ADD COLUMN `express_fee` decimal(20, 2);
