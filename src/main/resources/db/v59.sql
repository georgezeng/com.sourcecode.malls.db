--liquibase formatted sql

--changeset admin:59

ALTER TABLE `goods_item` 
ADD COLUMN `number` varchar(255) NOT NULL;

ALTER TABLE `sub_order` 
ADD COLUMN `item_number` varchar(255) NOT NULL;