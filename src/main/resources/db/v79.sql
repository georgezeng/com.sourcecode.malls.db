--liquibase formatted sql

--changeset admin:79

ALTER TABLE `client_coupon` 
ADD COLUMN `out_time` datetime NULL;

