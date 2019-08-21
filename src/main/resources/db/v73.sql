--liquibase formatted sql

--changeset admin:73

CREATE TABLE `coupon_setting` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`title` varchar(50) NOT NULL,
	`amount` decimal(20,2) NOT NULL,
	`start_date` date NOT NULL,
	`end_date` date,
	`img_path` varchar(255) NOT NULL,
	`total_nums` bigint(20) NOT NULL,
	`sent_nums` bigint(20) NOT NULL,
	`used_nums` bigint(20) NOT NULL,
	`limited_nums` int(11) NOT NULL,
	`status` varchar(50) NOT NULL,
	`event_type` varchar(50),
	`hx_type` varchar(50),
	`type` varchar(50) NOT NULL,
	`description` text,
	`enabled` bit(1) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Coupon_Setting_merchant_id` (`merchant_id`),
	INDEX `idx_Coupon_Setting_name` (`name`)
);

CREATE TABLE `coupon_setting_goods_category` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`setting_id` bigint(20) NOT NULL,
	`category_id` bigint(20) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Coupon_Setting_Goods_Category_setting_id_category_id` (`setting_id`, `category_id`)
);


CREATE TABLE `coupon_setting_real_category` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`setting_id` bigint(20) NOT NULL,
	`category_id` bigint(20) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Coupon_Setting_Real_Category_setting_id_category_id` (`setting_id`, `category_id`)
);

CREATE TABLE `coupon_setting_goods_item` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`setting_id` bigint(20) NOT NULL,
	`item_id` bigint(20) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Coupon_Setting_Goods_Item_setting_id_item_id` (`setting_id`, `item_id`)
);

CREATE TABLE `client_coupon` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`coupon_id` varchar(255) NOT NULL,
	`client_id` bigint(20) NOT NULL,
	`merchant_id` bigint(20) NOT NULL,
	`setting_id` bigint(20) NOT NULL,
	`order_id` bigint(20),
	`received_time` datetime NOT NULL,
	`used_time` datetime,
	`status` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Client_Coupon_coupon_id` (`coupon_id`),
	INDEX `idx_Client_Coupon_client_id` (`client_id`),
	INDEX `idx_Client_Coupon_merchant_id` (`merchant_id`),
	INDEX `idx_Client_Coupon_order_id` (`order_id`),
	INDEX `idx_Client_Coupon_setting_id` (`setting_id`)
);


CREATE TABLE `coupon_invite_event_setting` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`setting_id` bigint(20) NOT NULL,
	`member_nums` int(11) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Coupon_Invite_Event_Setting_setting_id` (`setting_id`)
);

CREATE TABLE `coupon_consume_event_setting` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`setting_id` bigint(20) NOT NULL,
	`type` varchar(50) NOT NULL,
	`up_to_amount` decimal(20, 2) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Coupon_Consume_Event_Setting_setting_id` (`setting_id`)
);

CREATE TABLE `consume_event_goods_category` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`setting_id` bigint(20) NOT NULL,
	`category_id` bigint(20) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Consume_Event_Goods_Category_setting_id_category_id` (`setting_id`, `category_id`)
);

CREATE TABLE `consume_event_real_category` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`setting_id` bigint(20) NOT NULL,
	`category_id` bigint(20) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Consume_Event_Real_Category_setting_id_category_id` (`setting_id`, `category_id`)
);

CREATE TABLE `consume_event_goods_item` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`setting_id` bigint(20) NOT NULL,
	`item_id` bigint(20) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Consume_Event_Goods_Item_setting_id_item_id` (`setting_id`, `item_id`)
);

CREATE TABLE `cash_coupon_order_limited_setting` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`order_amount` decimal(20,2) NOT NULL,
	`limited_amount` decimal(20,2) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Cash_Coupon_Order_Limited_Setting_merchant_id` (`merchant_id`)
);