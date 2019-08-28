--liquibase formatted sql

--changeset admin:84

ALTER TABLE `client_points` 
ADD COLUMN `acc_in_amount` decimal(20, 2) NOT NULL,
ADD COLUMN `acc_out_amount` decimal(20, 2) NOT NULL;

