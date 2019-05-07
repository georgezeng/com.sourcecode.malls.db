--liquibase formatted sql

--changeset admin:15

CREATE TABLE `goods_item` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`category_id` bigint(20),
	`brand_id` bigint(20),
	`name` varchar(50) NOT NULL,
	`code` varchar(50),
	`market_price` decimal(20, 2) NOT NULL,
	`selling_points` varchar(100),
	`content` longtext NOT NULL,
	`thumbnail` varchar(255) NOT NULL,
	`enabled` bit(1) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Item_merchant_id` (`merchant_id`),
	INDEX `idx_Goods_Item_name` (`name`)
);


CREATE TABLE `goods_item_photo` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`item_id` bigint(20) NOT NULL,
	`path` varchar(255) NOT NULL,
	`order_num` int(11) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Item_Photo_item_id` (`item_id`)
);