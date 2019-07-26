--liquibase formatted sql

--changeset admin:67

ALTER TABLE `merchant_setting` 
MODIFY COLUMN `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;