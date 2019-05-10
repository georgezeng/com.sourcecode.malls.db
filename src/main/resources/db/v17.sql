--liquibase formatted sql

--changeset admin:17

CREATE TABLE `goods_item_property` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`item_id` bigint(20) NOT NULL,
	`uid` varchar(255) NOT NULL,
	`price` decimal(20, 2) NOT NULL,
	`inventory` int(11) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Item_Property_item_id` (`item_id`),
	UNIQUE `idx_Goods_Item_Property_uid` (`uid`)
);


CREATE TABLE `goods_item_value` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`uid` varchar(255) NOT NULL,
	`value_id` bigint(20) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Item_Value_value_id` (`value_id`),
	INDEX `idx_Goods_Item_Value_uid` (`uid`)
);