--liquibase formatted sql

--changeset admin:96

CREATE TABLE `article_category` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`order_num` int(11) NOT NULL,
	`name` varchar(50) NOT NULL,
	`type` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Aritcle_Category_merchant_id` (`merchant_id`),
	INDEX `idx_Aritcle_Category_name` (`name`)
);


CREATE TABLE `article` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`category_id` bigint(20) NOT NULL,
	`order_num` int(11) NOT NULL,
	`title` varchar(50) NOT NULL,
	`img_path` varchar(255) NULL,
	`vedio_path` varchar(255) NULL,
	`content` text NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Aritcle_merchant_id` (`merchant_id`),
	INDEX `idx_Aritcle_title` (`title`)
);
