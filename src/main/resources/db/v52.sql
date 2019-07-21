--liquibase formatted sql

--changeset admin:52

ALTER TABLE `parent_order` 
DROP COLUMN `cancel_for_refund`,
ADD COLUMN `aftersale_applied_nums` int(11) NOT NULL;

CREATE TABLE `aftersale_application` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`client_id` bigint(20) NOT NULL,
	`merchant_id` bigint(20) NOT NULL,
	`order_id` bigint(20) NOT NULL,
	`sub_order_id` bigint(20) NOT NULL,
	`nums` int(11) NOT NULL,
	`amount` decimal(20,2),
	`status` varchar(50) NOT NULL,
	`type` varchar(50),
	`reason` varchar(50),
	`description` varchar(255),
	`specification_values` varchar(255),
	`express_company` varchar(50),
	`express_number` varchar(255),
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_AfterSale_Application_client_id` (`client_id`),
	INDEX `idx_AfterSale_Application_merchant_id` (`merchant_id`),
	INDEX `idx_AfterSale_Application_order_id` (`order_id`),
	INDEX `idx_AfterSale_Application_sub_order_id` (`sub_order_id`),
	INDEX `idx_AfterSale_Application_order_id_status` (`order_id`, `status`),
	INDEX `idx_AfterSale_Application_client_id_status` (`client_id`, `status`)
);

CREATE TABLE `aftersale_address` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`application_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`phone` varchar(50) NOT NULL,
	`province` varchar(50) NOT NULL,
	`city` varchar(50) NOT NULL,
	`district` varchar(50) NOT NULL,
	`location` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_AfterSale_Address_application_id` (`application_id`)
);

CREATE TABLE `aftersale_photo` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`application_id` bigint(20) NOT NULL,
	`path` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_AfterSale_Photo_application_id` (`application_id`)
);