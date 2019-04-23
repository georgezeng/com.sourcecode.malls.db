--liquibase formatted sql

--changeset admin:9

CREATE TABLE `merchant_shop_application_instruction` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`application_id` bigint(20) NOT NULL,
	`path` varchar(255) NOT NULL,
	`order_num` int(11) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Merchant_Shop_Application_Instruction_application_id` (`application_id`)
);