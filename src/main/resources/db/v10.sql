--liquibase formatted sql

--changeset admin:10

ALTER TABLE `merchant_shop_application` 
ADD COLUMN `android_url` varchar(255) NULL,
ADD COLUMN `ios_url` varchar(255) NULL;