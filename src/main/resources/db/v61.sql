--liquibase formatted sql

--changeset admin:61

ALTER TABLE `goods_item_evaluation` 
DROP COLUMN `stars_for_item`,
DROP COLUMN `stars_for_express`,
ADD COLUMN `merchant_id` bigint(20) NOT NULL, 
ADD COLUMN `passed` bit(1) NOT NULL, 
ADD COLUMN `replied` bit(1) NOT NULL, 
ADD COLUMN `reply` varchar(255), 
ADD COLUMN `reply_time` datetime;

ALTER TABLE `goods_item_additional_evaluation` 
DROP COLUMN `item_id`,
DROP COLUMN `client_id`,
DROP COLUMN `sub_order_id`,
DROP COLUMN `order_id`,
ADD COLUMN `merchant_id` bigint(20) NOT NULL, 
ADD COLUMN `passed` bit(1) NOT NULL, 
ADD COLUMN `replied` bit(1) NOT NULL, 
ADD COLUMN `reply` varchar(255), 
ADD COLUMN `reply_time` datetime;