--liquibase formatted sql

--changeset admin:38

ALTER TABLE `goods_item_additional_evaluation` 
ADD COLUMN `sub_order_id` bigint(20) NOT NULL,
ADD COLUMN `order_id` bigint(20) NOT NULL,
DROP INDEX `idx_Goods_Item_Additional_Evaluation_item_id_client_id`,
ADD UNIQUE INDEX `idx_Goods_item_Additional_Evaluation_item_id_order_id_client_id`(`item_id`, `client_id`, `order_id`) USING BTREE;

ALTER TABLE `goods_item_evaluation` 
ADD COLUMN `sub_order_id` bigint(20) NOT NULL,
ADD COLUMN `order_id` bigint(20) NOT NULL,
DROP INDEX `idx_Goods_Item_Evaluation_item_id_client_id`,
ADD UNIQUE INDEX `idx_Goods_item_Evaluation_item_id_order_id_client_id`(`item_id`, `client_id`, `order_id`) USING BTREE;