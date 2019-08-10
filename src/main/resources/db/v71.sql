--liquibase formatted sql

--changeset admin:71

ALTER TABLE `sub_order` 
MODIFY COLUMN `market_price` decimal(20, 2) NULL;
