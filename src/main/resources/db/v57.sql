--liquibase formatted sql

--changeset admin:57

ALTER TABLE `aftersale_application` 
DROP COLUMN `express_company`,
DROP COLUMN `express_number`,
ADD COLUMN `reject_reason` varchar(255),
ADD COLUMN `remark` varchar(255),
ADD COLUMN `merchant_express_company` varchar(50),
ADD COLUMN `merchant_express_number` varchar(255),
ADD COLUMN `client_express_company` varchar(50),
ADD COLUMN `client_express_number` varchar(255);

