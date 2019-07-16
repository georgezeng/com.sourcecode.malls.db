--liquibase formatted sql

--changeset admin:45

ALTER TABLE `wechat_token` 
CHANGE COLUMN `user_id` `merchant_id` bigint(20) NOT NULL;