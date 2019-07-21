--liquibase formatted sql

--changeset admin:53

ALTER TABLE `aftersale_application` 
ADD COLUMN `post_time` datetime,
ADD COLUMN `processed_time` datetime,
ADD COLUMN `return_time` datetime,
ADD COLUMN `receive_time` datetime,
ADD COLUMN `refund_time` datetime,
ADD COLUMN `reject_time` datetime;

