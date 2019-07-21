--liquibase formatted sql

--changeset admin:56

ALTER TABLE `aftersale_application` 
DROP COLUMN `merchant_receive_time`,
DROP COLUMN `client_receive_time`,
ADD COLUMN `receive_time` datetime,
ADD COLUMN `pickup_time` datetime;

