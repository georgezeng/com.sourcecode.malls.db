--liquibase formatted sql

--changeset admin:89

ALTER TABLE `client` 
ADD COLUMN `consume_total_amount` decimal(20, 2) NOT NULL,
ADD COLUMN `level_id` bigint(20) NULL;