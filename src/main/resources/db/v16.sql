--liquibase formatted sql

--changeset admin:16

ALTER TABLE `goods_brand` 
ADD COLUMN `category_id` bigint(20) NOT NULL;