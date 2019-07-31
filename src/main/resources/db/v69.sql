--liquibase formatted sql

--changeset admin:69

ALTER TABLE `client` 
ADD COLUMN `parent_id` bigint(20),
ADD INDEX `idx_Client_parent_id`(`parent_id`) USING BTREE;