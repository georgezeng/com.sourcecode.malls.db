--liquibase formatted sql

--changeset admin:80

ALTER TABLE `client_coupon` 
ADD COLUMN `invitee_id` bigint(20) NULL;

