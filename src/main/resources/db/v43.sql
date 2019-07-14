--liquibase formatted sql

--changeset admin:43

CREATE TABLE `wechat_token` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_id` bigint(20) NOT NULL,
	`access_token` varchar(255) NOT NULL,
	`refresh_token` varchar(255) NOT NULL,
	`open_id` varchar(255) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Wechat_Token_user_id` (`user_id`)
);

