--liquibase formatted sql

--changeset admin:111

ALTER TABLE `goods_item` 
ADD COLUMN `special_discount` bit(1) NOT NULL;
