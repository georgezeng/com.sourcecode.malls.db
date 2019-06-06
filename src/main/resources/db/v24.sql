--liquibase formatted sql

--changeset admin:24

CREATE TABLE `client_address` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`client_id` bigint(20) NOT NULL,
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
	INDEX `idx_Client_Address_client_id` (`client_id`),
	INDEX `idx_Client_Address_name` (`name`),
	INDEX `idx_Client_Address_province` (`province`),
	INDEX `idx_Client_Address_city` (`city`),
	INDEX `idx_Client_Address_district` (`district`)
);