--liquibase formatted sql

--changeset admin:82

CREATE TABLE `client_points` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`client_id` bigint(20) NOT NULL,
	`accumulated_amount` decimal(20, 2) NOT NULL,
	`current_amount` decimal(20, 2) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Client_Points_client_id` (`client_id`)
);

CREATE TABLE `client_points_journal` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`client_id` bigint(20) NOT NULL,
	`amount` decimal(20, 2) NOT NULL,
	`type` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Client_Points_Journal_client_id` (`client_id`)
);