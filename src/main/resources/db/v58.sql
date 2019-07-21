--liquibase formatted sql

--changeset admin:58

ALTER TABLE `aftersale_application` 
ADD COLUMN `send_time` datetime;

