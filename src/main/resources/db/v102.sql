--liquibase formatted sql

--changeset admin:102

ALTER TABLE `goods_item_evaluation` 
MODIFY COLUMN `remark` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL;