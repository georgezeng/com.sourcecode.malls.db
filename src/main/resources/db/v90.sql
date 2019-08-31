--liquibase formatted sql

--changeset admin:90

DROP TABLE `goods_item_value`;

CREATE TABLE `goods_item_property_value` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`property_id` bigint(20) NOT NULL,
	`value_id` bigint(20) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Goods_Item_Property_Value_property_id_value_id` (`property_id`, `value_id`)
);

