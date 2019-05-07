--liquibase formatted sql

--changeset admin:18

ALTER TABLE `goods_specification_definition` 
ADD COLUMN `category_id` bigint(20) NOT NULL;