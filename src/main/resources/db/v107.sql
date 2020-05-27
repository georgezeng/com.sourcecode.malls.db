--liquibase formatted sql

--changeset admin:107
CREATE TABLE `goods_item_photo_group` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`item_id` bigint(20) NOT NULL,
	`name` varchar(50) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `idx_Goods_Item_Photo_Group_item_id` (`item_id`),
	INDEX `idx_Goods_Item_Photo_Group_name` (`name`)
);

ALTER TABLE `goods_item_photo` 
ADD COLUMN `group_id` bigint(20),
MODIFY COLUMN `item_id` bigint(20) NULL;

ALTER TABLE `goods_specification_value` 
ADD COLUMN `path` varchar(255);
