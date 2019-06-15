--liquibase formatted sql

--changeset admin:26

CREATE TABLE `goods_item_evaluation` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`item_id` bigint(20) NOT NULL,
	`client_id` bigint(20) NOT NULL,
	`stars_for_item` int(11) NOT NULL,
	`stars_for_express` int(11) NOT NULL,
	`value` varchar(50) NOT NULL,
	`remark` varchar(255) NOT NULL,
	`anonymous` bit(1) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Goods_Item_Evaluation_item_id_client_id` (`item_id`, `client_id`),
	INDEX `idx_Goods_Item_Evaluation_item_id` (`item_id`)
);


CREATE TABLE `goods_item_evaluation_photo` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`evaluation_id` bigint(20) NOT NULL,
	`path` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Item_Evaluation_Photo_evaluation_id` (`evaluation_id`)
);

CREATE TABLE `goods_item_additional_evaluation` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`item_id` bigint(20) NOT NULL,
	`client_id` bigint(20) NOT NULL,
	`remark` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Goods_Item_Additional_Evaluation_item_id_client_id` (`item_id`, `client_id`),
	INDEX `idx_Goods_Item_Additional_Evaluation_item_id` (`item_id`)
);


CREATE TABLE `goods_item_additional_evaluation_photo` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`evaluation_id` bigint(20) NOT NULL,
	`path` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Item_Additional_Evaluation_Photo_evaluation_id` (`evaluation_id`)
);

ALTER TABLE `goods_item`
DROP COLUMN `real_price`,
ADD COLUMN `min_price` decimal(20, 2) NOT NULL,
ADD COLUMN `max_price` decimal(20, 2) NOT NULL;