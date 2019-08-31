--liquibase formatted sql

--changeset admin:88

CREATE TABLE `client_level_setting` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`level` int(11) NOT NULL,
	`name` varchar(50) NULL,
	`up_to_amount` decimal(20,2) NULL,
	`discount` decimal(20,2) NULL,
	`discount_in_activity` decimal(20,2) NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Client_Level_Setting_merchant_id` (`merchant_id`)
);

CREATE TABLE `client_activity_event` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`name` varchar(50) NULL,
	`start_time` datetime NULL,
	`end_time` datetime NULL,
	`paused` bit(1) NOT NULL,
	`deleted` bit(1) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Client_Activity_Event_merchant_id` (`merchant_id`),
	INDEX `idx_Client_Activity_Event_name` (`name`)
);