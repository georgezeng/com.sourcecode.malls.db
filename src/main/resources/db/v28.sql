--liquibase formatted sql

--changeset admin:28

CREATE TABLE `client_cart_item` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`item_id` bigint(20) NOT NULL,
	`client_id` bigint(20) NOT NULL,
	`property_id` bigint(20) NOT NULL,
	`nums` int(11) NOT NULL,
	`create_by` varchar(50) NOT NULL,
	`update_by` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `idx_Client_Cart_Item_client_id_property_id` (`client_id`, `property_id`),
	INDEX `idx_Client_Cart_Item_client_id` (`client_id`),
	INDEX `idx_Client_Cart_Item_item_id` (`item_id`)
);

