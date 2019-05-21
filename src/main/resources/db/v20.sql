--liquibase formatted sql

--changeset admin:20

CREATE TABLE `merchant_setting` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`code` varchar(255) NOT NULL,
	`value` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Merchant_Setting_merchant_id_code` (`merchant_id`, `code`)
);

