--liquibase formatted sql

--changeset admin:27

ALTER TABLE `goods_item_rank` 
CHANGE COLUMN `good_points` `good_evaluations` bigint(20) NOT NULL,
CHANGE COLUMN `neutrality_points` `neutrality_evaluations` bigint(20) NOT NULL,
CHANGE COLUMN `bad_points` `bad_evaluations` bigint(20) NOT NULL;