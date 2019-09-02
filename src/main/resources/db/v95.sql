--liquibase formatted sql

--changeset admin:95

CREATE TABLE `advertisement_setting` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`type` varchar(50) NOT NULL,
	`link` varchar(255) NULL,
	`order_num` int(11) NOT NULL,
	`start_date` date NOT NULL,
	`end_date` date NOT NULL,
	`path` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Advertisement_Setting_merchant_id` (`merchant_id`),
	INDEX `idx_Advertisement_Setting_name` (`name`)
);

