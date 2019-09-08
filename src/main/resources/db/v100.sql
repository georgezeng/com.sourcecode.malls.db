--liquibase formatted sql

--changeset admin:100

ALTER TABLE `advertisement_setting` 
CHANGE COLUMN `start_date` `start_time` datetime(0) NOT NULL,
CHANGE COLUMN `end_date` `end_time` datetime(0) NOT NULL,
ADD COLUMN `enabled` bit(1) NOT NULL;