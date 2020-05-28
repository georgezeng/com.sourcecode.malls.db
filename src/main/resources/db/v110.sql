--liquibase formatted sql

--changeset admin:110

CREATE TABLE `goods_recommend_category` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`merchant_id` bigint(20) NOT NULL,
	`category_id` bigint(20) NOT NULL,
	`order_num` int(11) NOT NULL,
	`name` varchar(50) NOT NULL,
	`logo` varchar(255) NOT NULL,
	`link` varchar(link) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Recommend_Category_merchant_id` (`merchant_id`),
	INDEX `idx_Goods_Recommend_Category_category_id` (`category_id`),
	INDEX `idx_Goods_Recommend_Category_name` (`name`)
);
