--liquibase formatted sql

--changeset admin:49

ALTER TABLE `parent_order` 
ADD COLUMN `transaction_id` varchar(255);