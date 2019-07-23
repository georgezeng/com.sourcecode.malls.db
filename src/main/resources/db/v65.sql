--liquibase formatted sql

--changeset admin:65

ALTER TABLE `goods_item_evaluation` 
DROP COLUMN `show`,
ADD COLUMN `open` bit(1) NOT NULL;
