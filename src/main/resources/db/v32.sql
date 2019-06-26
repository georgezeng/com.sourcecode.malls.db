--liquibase formatted sql

--changeset admin:32

ALTER TABLE `order_address` DROP COLUMN `is_default`;

