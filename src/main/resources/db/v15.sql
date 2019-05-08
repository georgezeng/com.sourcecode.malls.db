--liquibase formatted sql

--changeset admin:15

ALTER TABLE `goods_specification_definition` 
DROP COLUMN `category_id`;