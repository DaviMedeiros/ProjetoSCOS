-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Mar-2017 às 14:53
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_projetoscos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod_cliente` int(4) NOT NULL,
  `cod_endereco` int(4) NOT NULL,
  `nome` text NOT NULL,
  `tel` int(10) NOT NULL,
  `cel` int(12) NOT NULL,
  `cpf-cnpj` int(14) NOT NULL,
  `rg-inscrEst` varchar(20) NOT NULL,
  `uf-rg` text NOT NULL,
  `tipo` int(1) NOT NULL,
  `email` text NOT NULL,
  `observacoes` text NOT NULL,
  `status` int(1) NOT NULL,
  `dataCad` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente-veiculo`
--

CREATE TABLE `cliente-veiculo` (
  `cod_cliente-veiculo` int(4) NOT NULL,
  `cod_cliente` int(4) NOT NULL,
  `cod_veiculo` int(4) NOT NULL,
  `dataCad` date NOT NULL,
  `dataFech` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cod_endereco` int(4) NOT NULL,
  `endereco` text NOT NULL,
  `bairro` text NOT NULL,
  `cep` int(8) NOT NULL,
  `cidade` text NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mecanico`
--

CREATE TABLE `mecanico` (
  `cod_mecanico` int(4) NOT NULL,
  `nome` text NOT NULL,
  `endereco` text NOT NULL,
  `bairro` text NOT NULL,
  `cidade` text NOT NULL,
  `tel` int(12) NOT NULL,
  `cpf` int(14) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `ctps` int(40) NOT NULL,
  `perc-comiss` float NOT NULL,
  `email` text NOT NULL,
  `dataNasc` date NOT NULL,
  `dataCad` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mecanico-servico`
--

CREATE TABLE `mecanico-servico` (
  `cod_mecanico-servico` int(4) NOT NULL,
  `cod_os` int(4) NOT NULL,
  `cod_mecanico` int(4) NOT NULL,
  `cod_servico` int(4) NOT NULL,
  `valorServ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `o.s`
--

CREATE TABLE `o.s` (
  `cod_os` int(4) NOT NULL,
  `cod_cliente` int(4) NOT NULL,
  `dataAbert` date NOT NULL,
  `totalOS` float NOT NULL,
  `totalServ` float NOT NULL,
  `totalProd` float NOT NULL,
  `kmAtual` int(6) NOT NULL,
  `status` int(1) NOT NULL,
  `dataFech` date NOT NULL,
  `dataPag` date NOT NULL,
  `dataCancel` date NOT NULL,
  `sitFinanc` int(1) NOT NULL,
  `motCancel` text NOT NULL,
  `valorPago` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `cod_produto` int(4) NOT NULL,
  `nome` text NOT NULL,
  `valorVenda` float NOT NULL,
  `dataAlt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto-os`
--

CREATE TABLE `produto-os` (
  `cod_produto-os` int(4) NOT NULL,
  `cod_produto` int(4) NOT NULL,
  `cod_os` int(4) NOT NULL,
  `qntProd` int(4) NOT NULL,
  `valorUN` float NOT NULL,
  `valorTotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `cod_servico` int(4) NOT NULL,
  `descricao` text NOT NULL,
  `valor` float NOT NULL,
  `dataAlt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod_usuario` int(4) NOT NULL,
  `nome` text NOT NULL,
  `endereco` text NOT NULL,
  `bairro` text NOT NULL,
  `cidade` text NOT NULL,
  `tel` int(10) NOT NULL,
  `cel` int(12) NOT NULL,
  `sexo` text NOT NULL,
  `cpf` int(14) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `uf-rg` text NOT NULL,
  `ctps` int(40) NOT NULL,
  `email` text NOT NULL,
  `dataNasc` date NOT NULL,
  `tipo` int(4) NOT NULL,
  `dataCad` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `cod_veiculo` int(4) NOT NULL,
  `modelo` text NOT NULL,
  `placa` varchar(20) NOT NULL,
  `ano` int(4) NOT NULL,
  `chassis` int(30) NOT NULL,
  `marca` text NOT NULL,
  `cor` text NOT NULL,
  `dataCad` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`),
  ADD KEY `cod_endereco` (`cod_endereco`);

--
-- Indexes for table `cliente-veiculo`
--
ALTER TABLE `cliente-veiculo`
  ADD PRIMARY KEY (`cod_cliente-veiculo`),
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `cod_veiculo` (`cod_veiculo`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cod_endereco`);

--
-- Indexes for table `mecanico`
--
ALTER TABLE `mecanico`
  ADD PRIMARY KEY (`cod_mecanico`);

--
-- Indexes for table `mecanico-servico`
--
ALTER TABLE `mecanico-servico`
  ADD PRIMARY KEY (`cod_mecanico-servico`),
  ADD KEY `cod_os` (`cod_os`),
  ADD KEY `cod_mecanico` (`cod_mecanico`),
  ADD KEY `cod_servico` (`cod_servico`);

--
-- Indexes for table `o.s`
--
ALTER TABLE `o.s`
  ADD PRIMARY KEY (`cod_os`),
  ADD KEY `cod_cliente` (`cod_cliente`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod_produto`);

--
-- Indexes for table `produto-os`
--
ALTER TABLE `produto-os`
  ADD PRIMARY KEY (`cod_produto-os`),
  ADD KEY `cod_produto` (`cod_produto`),
  ADD KEY `cod_os` (`cod_os`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`cod_servico`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod_usuario`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`cod_veiculo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cliente` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cliente-veiculo`
--
ALTER TABLE `cliente-veiculo`
  MODIFY `cod_cliente-veiculo` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `cod_endereco` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mecanico`
--
ALTER TABLE `mecanico`
  MODIFY `cod_mecanico` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mecanico-servico`
--
ALTER TABLE `mecanico-servico`
  MODIFY `cod_mecanico-servico` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o.s`
--
ALTER TABLE `o.s`
  MODIFY `cod_os` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `cod_produto` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produto-os`
--
ALTER TABLE `produto-os`
  MODIFY `cod_produto-os` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `cod_servico` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_usuario` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `cod_veiculo` int(4) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cod_endereco`) REFERENCES `endereco` (`cod_endereco`);

--
-- Limitadores para a tabela `cliente-veiculo`
--
ALTER TABLE `cliente-veiculo`
  ADD CONSTRAINT `cliente-veiculo_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  ADD CONSTRAINT `cliente-veiculo_ibfk_2` FOREIGN KEY (`cod_veiculo`) REFERENCES `veiculo` (`cod_veiculo`);

--
-- Limitadores para a tabela `mecanico-servico`
--
ALTER TABLE `mecanico-servico`
  ADD CONSTRAINT `mecanico-servico_ibfk_1` FOREIGN KEY (`cod_os`) REFERENCES `o.s` (`cod_os`),
  ADD CONSTRAINT `mecanico-servico_ibfk_2` FOREIGN KEY (`cod_mecanico`) REFERENCES `mecanico` (`cod_mecanico`),
  ADD CONSTRAINT `mecanico-servico_ibfk_3` FOREIGN KEY (`cod_servico`) REFERENCES `servico` (`cod_servico`);

--
-- Limitadores para a tabela `o.s`
--
ALTER TABLE `o.s`
  ADD CONSTRAINT `o.s_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente-veiculo` (`cod_cliente-veiculo`);

--
-- Limitadores para a tabela `produto-os`
--
ALTER TABLE `produto-os`
  ADD CONSTRAINT `produto-os_ibfk_1` FOREIGN KEY (`cod_produto`) REFERENCES `produto` (`cod_produto`),
  ADD CONSTRAINT `produto-os_ibfk_2` FOREIGN KEY (`cod_os`) REFERENCES `o.s` (`cod_os`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
