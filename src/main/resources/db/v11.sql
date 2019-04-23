--liquibase formatted sql

--changeset admin:11

ALTER TABLE `merchant_shop_application` 
ADD COLUMN `deployed` bit(1) NOT NULL;