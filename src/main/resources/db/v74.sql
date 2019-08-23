--liquibase formatted sql

--changeset admin:74

ALTER TABLE `parent_order` 
ADD COLUMN `real_price` decimal(20, 2) NOT NULL,
ADD COLUMN `coupon_amount` decimal(20, 2) NULL;

