--liquibase formatted sql

--changeset admin:29

CREATE TABLE `invoice` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`client_id` bigint(20) NOT NULL,
	`order_id` bigint(20) NOT NULL,
	`type` varchar(50) NOT NULL,
	`title` varchar(255) NOT NULL,
	`code` varchar(255),
	`content` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Invoice_order_id` (`order_id`),
	INDEX `idx_Invoice_client_id` (`client_id`)
);

CREATE TABLE `invoice_template` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`client_id` bigint(20) NOT NULL,
	`type` varchar(50) NOT NULL,
	`title` varchar(255) NOT NULL,
	`code` varchar(255),
	`content` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Invoice_Template_client_id` (`client_id`)
);

CREATE TABLE `order` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`order_id` varchar(255) NOT NULL,
	`client_id` bigint(20) NOT NULL,
	`merchant_id` bigint(20) NOT NULL,
	`total_price` decimal(20, 2) NOT NULL,
	`status` varchar(50) NOT NULL,
	`payment` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Order_order_id` (`order_id`),
	INDEX `idx_Order_client_id` (`client_id`),
	INDEX `idx_Order_merchant_id` (`merchant_id`)
);

CREATE TABLE `sub_order` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`parent_id` bigint(20) NOT NULL,
	`client_id` bigint(20) NOT NULL,
	`order_id` varchar(255) NOT NULL,
	`item_id` bigint(20) NOT NULL,
	`item_code` varchar(50) NOT NULL,
	`item_name` varchar(50) NOT NULL,
	`thumbnail` varchar(255) NOT NULL,
	`item_content` longtext NOT NULL,
	`selling_points` varchar(100) NOT NULL,
	`category` varchar(50) NOT NULL,
	`brand` varchar(50) NOT NULL,
	`specification_values` varchar(255) NOT NULL,
	`express_number` varchar(255) NOT NULL,
	`market_price` decimal(20, 2) NOT NULL,
	`unit_price` decimal(20, 2) NOT NULL,
	`deal_price` decimal(20, 2) NOT NULL,
	`nums` int(11) NOT NULL,
	`status` varchar(50) NOT NULL,
	`payment` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Sub_Order_order_id` (`order_id`),
	INDEX `idx_Sub_Order_client_id` (`client_id`),
	INDEX `idx_Sub_Order_parent_id` (`parent_id`)
);

CREATE TABLE `order_address` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`order_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`phone` varchar(50) NOT NULL,
	`province` varchar(50) NOT NULL,
	`city` varchar(50) NOT NULL,
	`district` varchar(50) NOT NULL,
	`location` varchar(255) NOT NULL,
	`is_default` bit(1) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Order_Address_order_id` (`order_id`)
);