--liquibase formatted sql

--changeset admin:44

ALTER TABLE `sub_order` 
ADD COLUMN `property_id` bigint(20) NOT NULL;
