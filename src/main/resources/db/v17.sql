--liquibase formatted sql

--changeset admin:17

ALTER TABLE `goods_item` 
MODIFY COLUMN `market_price` decimal(20, 2) NOT NULL,
MODIFY COLUMN `content` longtext NOT NULL,
MODIFY COLUMN `thumbnail` varchar(255) NOT NULL;