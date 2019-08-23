--liquibase formatted sql

--changeset admin:75

ALTER TABLE `client_coupon` 
ADD COLUMN `from_order_id` bigint(20) NULL,
ADD INDEX `idx_Client_Coupon_from_order_id` (`from_order_id`);

