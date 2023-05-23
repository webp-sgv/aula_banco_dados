-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Maio-2023 às 01:30
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `industria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionarios` int(11) NOT NULL,
  `nome_funcionarios` varchar(20) DEFAULT NULL,
  `documento` char(14) DEFAULT NULL,
  `telefone` char(14) DEFAULT NULL,
  `id_setor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionarios`, `nome_funcionarios`, `documento`, `telefone`, `id_setor`) VALUES
(1, 'Jean Rodrigues', '12345678910', '62984032553', 3),
(2, 'Maria Silva', '13279845620', '61856431234', NULL),
(3, 'Robson Santana', '13279813210', '41311136546', 2),
(4, 'Caio Alves', '32165498799', '78946546613', NULL),
(5, 'Antonia Silva', '65498732120', '78946556551', NULL),
(6, 'Julia Maria', '98752145610', '13265465461', NULL),
(7, 'Higor Sampaio', '98732147199', '13265498798', 2),
(8, 'Julio Silva', '78996325810', '13265498791', NULL),
(9, 'Igor Guimaraes', '98741354610', '31265498777', NULL),
(10, 'Emilly Aparecida', '85296374110', '66546541321', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_solicitacao`
--

CREATE TABLE `itens_solicitacao` (
  `id_solicitacao_itens` int(11) NOT NULL,
  `id_produtos` int(11) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produtos` int(11) NOT NULL,
  `nome_produto` varchar(20) DEFAULT NULL,
  `valor_compra` float DEFAULT NULL,
  `npm` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produtos`, `nome_produto`, `valor_compra`, `npm`) VALUES
(1, 'Bota Tamanho G', 50, '80673515'),
(2, 'Bota Tamanho M', 45, '80673516'),
(3, 'Bota Tamanho P', 40, '80673517'),
(4, 'Blusa Verao G', 30, '80673518'),
(5, 'Blusa Verao M', 25, '80673519'),
(6, 'Blusa Verao P', 20, '80673520'),
(7, 'Calça Verao G', 50, '80673515'),
(8, 'Calça Verao M', 45, '80673516'),
(9, 'Calça Verao P', 40, '80673517'),
(10, 'Meia Inverno G', 30, '80673518'),
(11, 'Meia Inverno M', 25, '80673519'),
(12, 'Meia Inverno P', 20, '80673520'),
(13, 'Luva Inverno G', 50, '80673515'),
(14, 'Luva Inverno M', 45, '80673516'),
(15, 'Luva Inverno P', 40, '80673517'),
(16, 'Sunga Verao G', 30, '80673518'),
(17, 'Sunga Verao M', 25, '80673519'),
(18, 'Sunga Verao P', 20, '80673520');

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `id_setor` int(11) NOT NULL,
  `nome_setor` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`id_setor`, `nome_setor`) VALUES
(1, 'RH'),
(2, 'Financeiro'),
(3, 'Diretoria'),
(4, 'RH'),
(5, 'Financeiro'),
(6, 'Diretoria'),
(7, 'RH'),
(8, 'Financeiro'),
(9, 'Diretoria'),
(10, 'Aumoxarifato'),
(11, 'Aquisição');

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacao`
--

CREATE TABLE `solicitacao` (
  `id_solicitacao` int(11) NOT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `solicitacao`
--

INSERT INTO `solicitacao` (`id_solicitacao`, `id_funcionario`, `data`) VALUES
(1, 1, '2023-05-23 00:00:00'),
(2, 2, '2023-05-23 00:00:00'),
(3, 3, '2023-05-23 19:23:59'),
(4, 4, '2023-05-23 00:00:00'),
(5, 5, '2023-05-23 00:00:00'),
(6, 6, '2023-05-23 19:23:59'),
(7, 7, '2023-05-23 00:00:00'),
(8, 8, '2023-05-23 00:00:00'),
(9, 9, '2023-05-23 00:00:00'),
(10, 10, '2023-05-23 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionarios`),
  ADD KEY `fk_id_setor` (`id_setor`);

--
-- Índices para tabela `itens_solicitacao`
--
ALTER TABLE `itens_solicitacao`
  ADD PRIMARY KEY (`id_solicitacao_itens`),
  ADD KEY `fk_id_produto` (`id_produtos`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produtos`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id_setor`);

--
-- Índices para tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD PRIMARY KEY (`id_solicitacao`),
  ADD KEY `fk_id_funcionario` (`id_funcionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itens_solicitacao`
--
ALTER TABLE `itens_solicitacao`
  MODIFY `id_solicitacao_itens` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produtos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `id_setor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  MODIFY `id_solicitacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `fk_id_setor` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id_setor`);

--
-- Limitadores para a tabela `itens_solicitacao`
--
ALTER TABLE `itens_solicitacao`
  ADD CONSTRAINT `fk_id_produto` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`id_produtos`),
  ADD CONSTRAINT `fk_id_solicitacao` FOREIGN KEY (`id_solicitacao_itens`) REFERENCES `solicitacao` (`id_solicitacao`);

--
-- Limitadores para a tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD CONSTRAINT `fk_id_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionarios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
