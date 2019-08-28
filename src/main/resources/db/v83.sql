--liquibase formatted sql

--changeset admin:83

ALTER TABLE `client_points_journal` 
ADD COLUMN `bonus_amount` decimal(20, 2) NOT NULL,
ADD COLUMN `order_id` varchar(255) NOT NULL;

