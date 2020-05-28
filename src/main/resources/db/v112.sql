--liquibase formatted sql

--changeset admin:112

ALTER TABLE `goods_item` 
ADD COLUMN `discount` decimal(20, 2) NOT NULL DEFAULT 100;
