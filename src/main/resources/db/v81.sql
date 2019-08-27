--liquibase formatted sql

--changeset admin:81

ALTER TABLE `goods_item` 
ADD COLUMN `vedio_path` varchar(255) NULL;

