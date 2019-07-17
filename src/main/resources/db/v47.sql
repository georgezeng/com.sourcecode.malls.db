--liquibase formatted sql

--changeset admin:47

ALTER TABLE `sub_order` 
DROP COLUMN `express_number`;

CREATE TABLE `express` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`order_id` bigint(20) NOT NULL,
	`merchant_id` bigint(20) NOT NULL,
	`client_id` bigint(20) NOT NULL,
	`company` varchar(50) NOT NULL,
	`number` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Express_client_id` (`client_id`),
	INDEX `idx_Express_merchant_id` (`merchant_id`),
	INDEX `idx_Express_order_id` (`order_id`)
);

CREATE TABLE `express_sub_order` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`express_id` bigint(20) NOT NULL,
	`sub_order_id` bigint(20) NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Express_Sub_Order_express_id_sub_order_id` (`express_id`, `sub_order_id`),
	INDEX `idx_Express_Sub_Order_express_id` (`express_id`)
);