--liquibase formatted sql

--changeset admin:35

CREATE TABLE `invoice_setting` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`content` varchar(50) NOT NULL,
	`order_num` int(11) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Invoice_Setting_merchant_id` (`merchant_id`)
);