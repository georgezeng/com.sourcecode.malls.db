--liquibase formatted sql

--changeset admin:30

ALTER TABLE `order` 
ADD COLUMN `remark` varchar(30) AFTER `payment`;

