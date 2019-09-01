--liquibase formatted sql

--changeset admin:94

ALTER TABLE `express` 
MODIFY COLUMN `express_time` datetime NULL;
