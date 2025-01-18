CREATE SCHEMA `sucos_marketing`;
CREATE TABLE `sucos_marketing`.`campanhas` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `nome_campanha` VARCHAR(100),
    `data_inicio` DATE,
    `data_fim` DATE
)

CREATE SCHEMA `sucos_marketing`;
CREATE TABLE `sucos_marketing`.`campanhas` (
    `campanha_id` INT AUTO_INCREMENT PRIMARY KEY,
    `campanha_nome` VARCHAR(100),
    `campanha_data_inicio` DATE,
    `campanha_data_fim` DATE
);

ALTER TABLE `sucos_vendas`.`clientes` COMMENT = 'Tabela para armazenar informações dos clientes';

ALTER TABLE `sucos_vendas`.`clientes` MODIFY COLUMN `nome` VARCHAR(100) COMMENT 'Nome completo do cliente';

CREATE TABLE `sucos_vendas`.`clientes` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `nome` VARCHAR(100)
);

CREATE TABLE `sucos_vendas`.`pedidos` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `cliente_id` INT,
    `data_pedido` DATE,
    FOREIGN KEY (`cliente_id`) REFERENCES `clientes`(`id`)
);

CREATE TABLE `sucos_vendas`.`clientes` (
    `cliente_id` INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único do cliente',
    `cliente_nome` VARCHAR(100) COMMENT 'Nome completo do cliente'
) COMMENT 'Tabela para armazenar informações dos clientes';

CREATE TABLE `sucos_vendas`.`pedidos` (
    `pedido_id` INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único do pedido',
    `cliente_id` INT COMMENT 'Identificador do cliente que fez o pedido',
    `data_pedido` DATE COMMENT 'Data em que o pedido foi realizado',
    FOREIGN KEY (`cliente_id`) REFERENCES `clientes`(`cliente_id`)
) COMMENT 'Tabela para armazenar informações dos pedidos';