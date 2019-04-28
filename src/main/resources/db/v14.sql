--liquibase formatted sql

--changeset admin:14

ALTER TABLE `goods_category` 
ADD COLUMN `level` int(11) NOT NULL,
ADD COLUMN `parent_id` bigint(20) NULL;