--liquibase formatted sql

--changeset admin:21


ALTER TABLE `client` 
ADD COLUMN `unionid` varchar(255) NULL,
ADD UNIQUE INDEX `idx_Client_merchant_id_unionid`(`merchant_id`, `unionid`);