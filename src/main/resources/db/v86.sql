--liquibase formatted sql

--changeset admin:86

ALTER TABLE `client_points` 
DROP COLUMN `accumulated_amount`;

