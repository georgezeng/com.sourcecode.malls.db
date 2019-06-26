--liquibase formatted sql

--changeset admin:34

ALTER TABLE `sub_order` 
MODIFY COLUMN `item_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
MODIFY COLUMN `selling_points` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
MODIFY COLUMN `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
MODIFY COLUMN `brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;