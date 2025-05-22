CREATE DATABASE agentedesaúde;
USE agentedesaúde;
DROP TABLE IF EXISTS `bolsa_familia`;
CREATE TABLE IF NOT EXISTS `bolsa_familia` (
  `NIS` int NOT NULL AUTO_INCREMENT,
  `nome_familia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nascimento` date NOT NULL,
  `peso` int NOT NULL,
  `altura` int NOT NULL,
  `vacinacao` text NOT NULL,
  `infor_gestacional` text ,
  `data_ultimoPreNatal` date ,
  PRIMARY KEY (`NIS`)
); 

DROP TABLE IF EXISTS `login_agente`;
CREATE TABLE IF NOT EXISTS `login_agente` (
  `id_agente` int NOT NULL AUTO_INCREMENT,
  `nome_agenteSaude` text NOT NULL,
  `CPF` int NOT NULL,
  `senha` int NOT NULL,
  PRIMARY KEY (`id_agente`)
);

DROP TABLE IF EXISTS `medicamento_psicologo`;
CREATE TABLE IF NOT EXISTS `medicamento_psicologo` (
  `cartaoSUS` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` text NOT NULL,
  `medicamentos` text NOT NULL,
  PRIMARY KEY (`cartaoSUS`)
); 

DROP TABLE IF EXISTS `visita_domiciliar`;
CREATE TABLE IF NOT EXISTS `visita_domiciliar` (
  `id_domicilio` int NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `idade` int NOT NULL,
  `motivo_visita` text NOT NULL,
  `entregas` text NOT NULL,
  `data` date NOT NULL,
  `agente` int NOT NULL,
  PRIMARY KEY (`id_domicilio`)
);
