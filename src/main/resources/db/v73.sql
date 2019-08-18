--liquibase formatted sql

--changeset admin:73


ALTER TABLE `parent_order` 
ADD COLUMN `sent_time` datetime(0) NULL;