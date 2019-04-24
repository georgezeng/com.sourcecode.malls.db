--liquibase formatted sql

--changeset admin:12

CREATE TABLE `goods_specification_value` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Specification_Value_merchant_id` (`merchant_id`),
	INDEX `idx_Goods_Specification_Value_name` (`name`)
);

CREATE TABLE `goods_specification_definition` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Specification_Definition_merchant_id` (`merchant_id`),
	INDEX `idx_Goods_Specification_Definition_name` (`name`)
);

CREATE TABLE `goods_specification_definition_value` (
	`definition_id` bigint(20) NOT NULL,
	`value_id` bigint(20) NOT NULL,
	INDEX `idx_Goods_Specification_Definition_Value_definition_id` (`definition_id`)
);

CREATE TABLE `goods_specification_group` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Specification_Group_merchant_id` (`merchant_id`),
	INDEX `idx_Goods_Specification_Group_name` (`name`)
);

CREATE TABLE `goods_specification_group_definition` (
	`group_id` bigint(20) NOT NULL,
	`definition_id` bigint(20) NOT NULL,
	INDEX `idx_Goods_Specification_Group_Definition_group_id` (`group_id`)
);

CREATE TABLE `goods_category` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Category_merchant_id` (`merchant_id`),
	INDEX `idx_Goods_Category_name` (`name`)
);

CREATE TABLE `goods_category_specification_group` (
	`category_id` bigint(20) NOT NULL,
	`group_id` bigint(20) NOT NULL,
	INDEX `idx_Goods_Category_Specification_Group_category_id` (`category_id`)
);