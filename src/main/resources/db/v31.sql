--liquibase formatted sql

--changeset admin:31

ALTER TABLE `order` RENAME TO `parent_order`;

