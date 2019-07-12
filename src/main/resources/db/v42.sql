--liquibase formatted sql

--changeset admin:42

ALTER TABLE `parent_order` 
ADD COLUMN `pay_time` datetime;
