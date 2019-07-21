--liquibase formatted sql

--changeset admin:54

ALTER TABLE `aftersale_application` 
ADD COLUMN `service_id` varchar(255) NOT NULL,
ADD UNIQUE `idx_AfterSale_Application_service_id` (`service_id`);

