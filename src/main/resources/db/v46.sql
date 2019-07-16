--liquibase formatted sql

--changeset admin:46

ALTER TABLE `wechat_token` 
DROP INDEX `idx_Wechat_Token_user_id`;