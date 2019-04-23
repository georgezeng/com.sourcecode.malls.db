--liquibase formatted sql

--changeset admin:7

CREATE TABLE `merchant_shop_application` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`domain` varchar(50) NOT NULL,
	`logo` varchar(255) NOT NULL,
	`android_type` bit(1) NOT NULL,
	`ios_type` bit(1) NOT NULL,
	`android_small_icon` varchar(255),
	`android_big_icon` varchar(255),
	`ios_small_icon` varchar(255),
	`ios_big_icon` varchar(255),
	`login_bg_img` varchar(255) NOT NULL,
	`description` varchar(255) NOT NULL,
	`reason` varchar(255),
	`status` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Merchant_Shop_Application_merchant_id` (`merchant_id`),
	UNIQUE `idx_Merchant_Shop_Application_domain` (`domain`),
	INDEX `idx_Merchant_Shop_Application_name` (`name`),
	INDEX `idx_Merchant_Shop_Application_status` (`status`)
);
