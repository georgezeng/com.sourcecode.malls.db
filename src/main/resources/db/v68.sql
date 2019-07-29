--liquibase formatted sql

--changeset admin:68

ALTER TABLE `goods_item_evaluation` 
DROP INDEX `idx_Goods_item_Evaluation_item_id_order_id_client_id`,
ADD INDEX `idx_Goods_item_Evaluation_item_id_order_id_client_id`(`item_id`, `client_id`, `order_id`) USING BTREE;