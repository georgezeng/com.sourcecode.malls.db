--liquibase formatted sql

--changeset admin:60

ALTER TABLE `goods_item` 
ADD UNIQUE `idx_Goods_Item_number` (`number`);

