--liquibase formatted sql

--changeset admin:36

ALTER TABLE `goods_item` 
MODIFY COLUMN `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;