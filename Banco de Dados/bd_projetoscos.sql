-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Mar-2017 às 14:25
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
  `cpcliente` int(4) NOT NULL,
  `ceendereco` int(4) DEFAULT NULL,
  `txnome` varchar(200) NOT NULL,
  `txtel` varchar(50) DEFAULT NULL,
  `txcel` varchar(50) DEFAULT NULL,
  `txcpf_cnpj` varchar(50) NOT NULL,
  `txrg_inscrEst` varchar(20) NOT NULL,
  `txuf_rg` varchar(3) DEFAULT NULL,
  `tipo` int(1) NOT NULL,
  `txemail` varchar(150) DEFAULT NULL,
  `txobs` varchar(250) DEFAULT NULL,
  `statuscli` int(1) NOT NULL,
  `dtcadcliente` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_veiculo`
--

CREATE TABLE `cliente_veiculo` (
  `cpcliente_veiculo` int(4) NOT NULL,
  `cecliente` int(4) DEFAULT NULL,
  `ceveiculo` int(4) DEFAULT NULL,
  `statusclivei` int(1) NOT NULL,
  `dtfechclivei` date NOT NULL,
  `dtcadclivei` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cpendereco` int(4) NOT NULL,
  `txendereco` varchar(70) DEFAULT NULL,
  `txbairro` varchar(40) DEFAULT NULL,
  `txcep` varchar(11) DEFAULT NULL,
  `txcidade` varchar(50) DEFAULT NULL,
  `txestado` varchar(50) DEFAULT NULL,
  `dtaltend` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mecanico`
--

CREATE TABLE `mecanico` (
  `cpmecanico` int(4) NOT NULL,
  `ceendereco` int(4) NOT NULL DEFAULT '0',
  `txnome` varchar(200) NOT NULL,
  `txtel` varchar(50) DEFAULT NULL,
  `txcpf` varchar(50) NOT NULL,
  `txrg` varchar(20) NOT NULL,
  `txctps` varchar(50) NOT NULL,
  `percencomiss` float NOT NULL,
  `txemail` varchar(150) DEFAULT NULL,
  `dtnascmecanico` date NOT NULL,
  `dtcadmecanico` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mecanico_servico`
--

CREATE TABLE `mecanico_servico` (
  `cpmecanico_servico` int(4) NOT NULL,
  `ceos` int(4) DEFAULT NULL,
  `cemecanico` int(4) DEFAULT NULL,
  `ceservico` int(4) DEFAULT NULL,
  `vlrservmec` float NOT NULL,
  `dtcadmecserv` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE `os` (
  `cpos` int(4) NOT NULL,
  `cecliente` int(4) NOT NULL,
  `dtabertura` date NOT NULL,
  `vlrtotalos` float DEFAULT NULL,
  `vlrtotalserv` float DEFAULT NULL,
  `vlrtotalprod` float DEFAULT NULL,
  `kmatual` float NOT NULL,
  `statusos` int(1) DEFAULT NULL,
  `dtfechos` date DEFAULT NULL,
  `dtpago` date DEFAULT NULL,
  `dtcancel` date DEFAULT NULL,
  `situfinanc` int(1) DEFAULT NULL,
  `txmotivcancel` varchar(250) DEFAULT NULL,
  `vlrpago` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `cpproduto` int(4) NOT NULL,
  `txnome` varchar(200) NOT NULL,
  `vlrvenda` float NOT NULL,
  `dtaltprod` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_os`
--

CREATE TABLE `produto_os` (
  `cpproduto_os` int(4) NOT NULL,
  `ceproduto` int(4) DEFAULT NULL,
  `ceos` int(4) DEFAULT NULL,
  `qtdproduto` int(4) NOT NULL,
  `vlrunit` float NOT NULL,
  `vlrtotalprodos` float NOT NULL,
  `dtcadprodos` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `cpservico` int(4) NOT NULL,
  `txdescricao` varchar(250) NOT NULL,
  `vlrservico` float NOT NULL,
  `dtaltserv` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cpusuario` int(4) NOT NULL,
  `ceendereco` int(4) DEFAULT '0',
  `txnome` varchar(200) NOT NULL,
  `txtel` varchar(50) DEFAULT NULL,
  `txcel` varchar(50) DEFAULT NULL,
  `txsexo` varchar(3) DEFAULT NULL,
  `txcpf` varchar(14) NOT NULL,
  `txrg` varchar(20) NOT NULL,
  `txuf_rg` varchar(3) DEFAULT NULL,
  `txctps` varchar(50) DEFAULT NULL,
  `txemail` varchar(150) DEFAULT NULL,
  `dtnascimento` date NOT NULL,
  `tipo` int(4) NOT NULL,
  `dtcadusuario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `cpveiculo` int(4) NOT NULL,
  `txmodelo` varchar(40) NOT NULL,
  `txplaca` varchar(20) NOT NULL,
  `ano` int(4) DEFAULT NULL,
  `txchassis` varchar(50) DEFAULT NULL,
  `txmarca` varchar(20) NOT NULL,
  `txcor` varchar(20) DEFAULT NULL,
  `dtcadveiculo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpcliente`),
  ADD KEY `ceendereco` (`ceendereco`);

--
-- Indexes for table `cliente_veiculo`
--
ALTER TABLE `cliente_veiculo`
  ADD PRIMARY KEY (`cpcliente_veiculo`),
  ADD KEY `cliente-veiculoFK1` (`cecliente`),
  ADD KEY `cliente-veiculoFK2` (`ceveiculo`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cpendereco`);

--
-- Indexes for table `mecanico`
--
ALTER TABLE `mecanico`
  ADD PRIMARY KEY (`cpmecanico`),
  ADD KEY `mecanicoFK1` (`ceendereco`);

--
-- Indexes for table `mecanico_servico`
--
ALTER TABLE `mecanico_servico`
  ADD PRIMARY KEY (`cpmecanico_servico`),
  ADD KEY `mecanico_servicoFK1` (`ceos`),
  ADD KEY `mecanico_servicoFK2` (`cemecanico`),
  ADD KEY `mecanico_servicoFK3` (`ceservico`);

--
-- Indexes for table `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`cpos`),
  ADD KEY `osFK1` (`cecliente`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cpproduto`);

--
-- Indexes for table `produto_os`
--
ALTER TABLE `produto_os`
  ADD PRIMARY KEY (`cpproduto_os`),
  ADD KEY `produto_osFK1` (`ceproduto`),
  ADD KEY `produto_osFK2` (`ceos`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`cpservico`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpusuario`),
  ADD KEY `usuarioFK1` (`ceendereco`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`cpveiculo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cpcliente` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cliente_veiculo`
--
ALTER TABLE `cliente_veiculo`
  MODIFY `cpcliente_veiculo` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `cpendereco` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mecanico`
--
ALTER TABLE `mecanico`
  MODIFY `cpmecanico` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mecanico_servico`
--
ALTER TABLE `mecanico_servico`
  MODIFY `cpmecanico_servico` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `os`
--
ALTER TABLE `os`
  MODIFY `cpos` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `cpproduto` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produto_os`
--
ALTER TABLE `produto_os`
  MODIFY `cpproduto_os` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `cpservico` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cpusuario` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `cpveiculo` int(4) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `clienteFK1` FOREIGN KEY (`ceendereco`) REFERENCES `endereco` (`cpendereco`);

--
-- Limitadores para a tabela `cliente_veiculo`
--
ALTER TABLE `cliente_veiculo`
  ADD CONSTRAINT `cliente-veiculoFK1` FOREIGN KEY (`cecliente`) REFERENCES `cliente` (`cpcliente`),
  ADD CONSTRAINT `cliente-veiculoFK2` FOREIGN KEY (`ceveiculo`) REFERENCES `veiculo` (`cpveiculo`);

--
-- Limitadores para a tabela `mecanico`
--
ALTER TABLE `mecanico`
  ADD CONSTRAINT `mecanicoFK1` FOREIGN KEY (`ceendereco`) REFERENCES `endereco` (`cpendereco`);

--
-- Limitadores para a tabela `mecanico_servico`
--
ALTER TABLE `mecanico_servico`
  ADD CONSTRAINT `mecanico_servicoFK1` FOREIGN KEY (`ceos`) REFERENCES `os` (`cpos`),
  ADD CONSTRAINT `mecanico_servicoFK2` FOREIGN KEY (`cemecanico`) REFERENCES `mecanico` (`cpmecanico`),
  ADD CONSTRAINT `mecanico_servicoFK3` FOREIGN KEY (`ceservico`) REFERENCES `servico` (`cpservico`);

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `osFK1` FOREIGN KEY (`cecliente`) REFERENCES `cliente_veiculo` (`cpcliente_veiculo`);

--
-- Limitadores para a tabela `produto_os`
--
ALTER TABLE `produto_os`
  ADD CONSTRAINT `produto_osFK1` FOREIGN KEY (`ceproduto`) REFERENCES `produto` (`cpproduto`),
  ADD CONSTRAINT `produto_osFK2` FOREIGN KEY (`ceos`) REFERENCES `os` (`cpos`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuarioFK1` FOREIGN KEY (`ceendereco`) REFERENCES `endereco` (`cpendereco`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
