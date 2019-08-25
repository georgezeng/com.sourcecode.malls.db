--liquibase formatted sql

--changeset admin:78

ALTER TABLE `coupon_setting` 
MODIFY COLUMN `title` varchar(50) NULL;

