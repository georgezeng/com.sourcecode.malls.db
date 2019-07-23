--liquibase formatted sql

--changeset admin:62

ALTER TABLE `goods_item_additional_evaluation` 
ADD COLUMN `evaluation_id` bigint(20) NOT NULL,
ADD UNIQUE `idx_Goods_Item_Additional_Evaluation_evaluation_id` (`evaluation_id`),
ADD INDEX `idx_Goods_Item_Additional_Evaluation_merchant_id` (`merchant_id`);
