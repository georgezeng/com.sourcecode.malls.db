--liquibase formatted sql

--changeset admin:66

ALTER TABLE `sub_order` 
MODIFY COLUMN `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci;