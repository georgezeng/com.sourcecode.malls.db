--liquibase formatted sql

--changeset admin:108

ALTER TABLE `goods_specification_value` 
DROP COLUMN `path`;

ALTER TABLE `goods_item_property` 
ADD COLUMN `path` varchar(255);