-- Create databases
CREATE DATABASE IF NOT EXISTS `ms_inventory_library`;
CREATE DATABASE IF NOT EXISTS `ms_order_library`;
CREATE DATABASE IF NOT EXISTS `ms_account_library`;
CREATE DATABASE IF NOT EXISTS `ms_wallet_service`;
-- Create user table in ms_account_library database
CREATE TABLE IF NOT EXISTS `ms_account_library`.`account` (
    `id` VARCHAR(36) PRIMARY KEY,
    `firstName` VARCHAR(24) NOT NULL,
    `lastName` VARCHAR(24) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `cpf` VARCHAR(11) NOT NULL,
    `createdAt` VARCHAR(24) NOT NULL,
    `firebaseId` VARCHAR(36) NOT NULL,
    `passwordHash` VARCHAR(255) NOT NULL
);
-- Insert data into ms_order_library.user table
CREATE TABLE IF NOT EXISTS `ms_order_library`.`user` (
    `id` VARCHAR(36) PRIMARY KEY,
    `firstName` VARCHAR(24) NOT NULL,
    `lastName` VARCHAR(24) NOT NULL,
    `email` VARCHAR(100) NOT NULL
);
-- Insert data into ms_account_library.account table
INSERT INTO `ms_account_library`.`account` (
        `id`,
        `firstName`,
        `lastName`,
        `email`,
        `cpf`,
        `createdAt`,
        `firebaseId`,
        `passwordHash`
    )
VALUES (
        '3a5e8426-8265-418b-9ade-a82d0f69ec42',
        'John',
        'Doe',
        'johndoe@email.com',
        '32957853094',
        '2000-01-01T00:00:00.000Z',
        '3a5e8426dsa1a82d0f69ec42',
        'adu8sa8asuas8d781273810sdas89da8sd9a8sd9'
    );
-- Insert data into ms_order_library.user table
INSERT INTO `ms_order_library`.`user` (`id`, `firstName`, `lastName`, `email`)
VALUES (
        '3a5e8426-8265-418b-9ade-a82d0f69ec42',
        'John',
        'Doe',
        'johndoe@email.com'
    );