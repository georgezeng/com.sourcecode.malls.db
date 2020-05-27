--liquibase formatted sql

--changeset admin:109

ALTER TABLE `goods_item` 
ADD COLUMN `index_recommend` int(11) NOT NULL DEFAULT 0,
ADD COLUMN `index_order` int(11) NOT NULL;