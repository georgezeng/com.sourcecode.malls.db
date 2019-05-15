--liquibase formatted sql

--changeset admin:19

CREATE TABLE `client` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`username` varchar(50) NOT NULL,
	`password` varchar(255),
	`nickname` varchar(50),
	`email` varchar(50),
	`mobile` varchar(50),
	`avatar` varchar(255),
	`enabled` bit(1) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Client_merchant_id_username` (`merchant_id`, `username`),
	INDEX `idx_Client_merchant_id_nickname` (`merchant_id`, `nickname`)
);

