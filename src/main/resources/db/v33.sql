--liquibase formatted sql

--changeset admin:33

ALTER TABLE `sub_order` 
MODIFY COLUMN `express_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

