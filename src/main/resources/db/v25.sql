--liquibase formatted sql

--changeset admin:25

CREATE TABLE `goods_item_rank` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`item_id` bigint(20) NOT NULL,
	`good_points` bigint(20) NOT NULL,
	`neutrality_points` bigint(20) NOT NULL,
	`bad_points` bigint(20) NOT NULL,
	`order_nums` bigint(20) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Goods_Item_Rank_item_id` (`item_id`)
);

ALTER TABLE `goods_item`
ADD COLUMN `put_time` datetime;