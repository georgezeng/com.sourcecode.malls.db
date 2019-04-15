--liquibase formatted sql

--changeset admin:6

ALTER TABLE `user` 
ADD COLUMN `parent_id` bigint(20) NULL;