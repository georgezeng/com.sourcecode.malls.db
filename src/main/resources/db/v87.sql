--liquibase formatted sql

--changeset admin:87

ALTER TABLE `client_points_journal` 
MODIFY COLUMN `amount` decimal(20, 2) NULL,
MODIFY COLUMN `order_id` varchar(255) NULL;