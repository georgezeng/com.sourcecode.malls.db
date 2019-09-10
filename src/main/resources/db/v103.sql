--liquibase formatted sql

--changeset admin:103

ALTER TABLE `parent_order` 
ADD COLUMN `pickup_time` datetime NULL;