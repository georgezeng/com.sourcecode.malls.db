--liquibase formatted sql

--changeset admin:55

ALTER TABLE `aftersale_application` 
DROP COLUMN `receive_time`,
ADD COLUMN `merchant_receive_time` datetime,
ADD COLUMN `client_receive_time` datetime;

