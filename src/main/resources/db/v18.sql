--liquibase formatted sql

--changeset admin:18

ALTER TABLE `goods_item` 
MODIFY COLUMN `market_price` decimal(20, 2) NULL,
ADD COLUMN `real_price` decimal(20, 2) NOT NULL;