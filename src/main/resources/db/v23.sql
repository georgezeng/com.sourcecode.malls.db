--liquibase formatted sql

--changeset admin:23

CREATE TABLE `client_identity` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`client_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`number` varchar(50) NOT NULL,
	`status` varchar(50) NOT NULL,
	`face_photo` varchar(255) NOT NULL,
	`badge_photo` varchar(255) NOT NULL,
	`people_photo` varchar(255) NOT NULL,
	`reason` varchar(255),
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Client_Identity_client_id` (`client_id`),
	INDEX `idx_Client_Identity_name` (`name`),
	INDEX `idx_Client_Identity_number` (`number`)
);