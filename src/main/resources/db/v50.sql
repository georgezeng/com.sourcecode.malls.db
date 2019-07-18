--liquibase formatted sql

--changeset admin:50

ALTER TABLE `parent_order` 
ADD COLUMN `cancel_for_refund` bit(1) NOT NULL,
ADD COLUMN `refund_time` datetime;