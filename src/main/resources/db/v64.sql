--liquibase formatted sql

--changeset admin:64

DROP TABLE `goods_item_additional_evaluation`;
DROP TABLE `goods_item_additional_evaluation_photo`;

ALTER TABLE `goods_item_evaluation` 
ADD COLUMN `additional` bit(1) NOT NULL,
ADD COLUMN `has_audit` bit(1) NOT NULL,
ADD COLUMN `evaluation_id` bigint(20),
ADD COLUMN `show` bit(1) NOT NULL;
