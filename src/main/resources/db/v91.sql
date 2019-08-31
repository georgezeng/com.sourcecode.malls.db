--liquibase formatted sql

--changeset admin:91


ALTER TABLE `goods_item_property`
DROP COLUMN `uid`;

