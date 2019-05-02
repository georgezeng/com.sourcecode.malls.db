--liquibase formatted sql

--changeset admin:16

ALTER TABLE `goods_category` 
ADD COLUMN `icon` varchar(255) NOT NULL;
