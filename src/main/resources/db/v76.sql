--liquibase formatted sql

--changeset admin:76

CREATE TABLE `aftersale_return_address` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`application_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`phone` varchar(50) NOT NULL,
	`location` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_AfterSale_Return_Address_application_id` (`application_id`)
);

