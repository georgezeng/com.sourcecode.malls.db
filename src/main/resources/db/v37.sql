--liquibase formatted sql

--changeset admin:37

ALTER TABLE `sub_order` 
DROP COLUMN `order_id`,
DROP COLUMN `status`,
DROP COLUMN `payment`,
ADD COLUMN `deleted` bit(1) NOT NULL;