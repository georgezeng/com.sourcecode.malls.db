--liquibase formatted sql

--changeset admin:4

ALTER TABLE `merchant_user` 
ADD COLUMN `parent_id` bigint(20) NULL;
