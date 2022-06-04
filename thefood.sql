-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 17-Fev-2019 às 14:59
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thefood`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_pagseguro`
--

DROP TABLE IF EXISTS `config_pagseguro`;
CREATE TABLE IF NOT EXISTS `config_pagseguro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cartao` tinyint(1) NOT NULL,
  `ambiente` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `iditem` int(11) NOT NULL AUTO_INCREMENT,
  `nome_item` varchar(50) NOT NULL,
  `descricao_item` varchar(500) NOT NULL,
  `valor_item` varchar(50) NOT NULL,
  `arquivo_item` varchar(50) NOT NULL,
  `promocao` int(50) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`iditem`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`iditem`, `nome_item`, `descricao_item`, `valor_item`, `arquivo_item`, `promocao`, `id_usuario`) VALUES
(62, 'Ã© batatÃ£', 'MaÃ§aneta ambigual', '5', '0ec7568e7acb4f4b3932610553debac1.jpg', 1, 103),
(61, 'Esse nome de item Ã© GRANDE', 'Esses nomes aqui Ã© pra ser bem grande, vamos ves como eles se comportam se tiver um texto enorme aqui com varios itens adicionados', '99', '3552dd8ee309f7ad384723d1ac7f1bba.jpg', 0, 103),
(57, 'a', 'MaÃ§aneta ambigual', '1', 'b9b556bf105fe53765522440725bdc52.jpg', 1, 103),
(58, 'b', 'b', '9', '13c5e12bcf413ca9c0f3af0fc9b9d7fa.jpg', 0, 103),
(59, 'c', 'c', '9', '13277c072ddade3fb36b4097917268c1.jpg', 0, 103),
(60, 'Esse nome de item Ã© pra ser grande', 'Flavio', '9', 'dc517b45a03b751dcda1e99d875b5fee.jpg', 1, 103),
(37, 'Sushi', 'flavio sousa de castro', '8', 'sushi.jpg', 0, 147),
(35, 'Coca-Cola Lata', 'Flavioaweawed', '1', 'latinha.jpg', 1, 103),
(56, 'Agora', 'MaÃ§aneta ambigual', '50', '7b96fba940cc36840f36211d62d2d0c1.jpg', 0, 103),
(43, 'teste', 'teste', '22', 'pizza.jpg', 0, 103),
(44, 'teste', 'teste', '22', '2666925fe894a0deee15158891f61be3.jpg', 1, 103);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacao`
--

DROP TABLE IF EXISTS `notificacao`;
CREATE TABLE IF NOT EXISTS `notificacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `pedido` varchar(150) NOT NULL,
  `quantidade_item` varchar(500) NOT NULL,
  `valor_total` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `endereco_entrega` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data` datetime NOT NULL,
  `id_usuario` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notificacao`
--

INSERT INTO `notificacao` (`id`, `nome`, `pedido`, `quantidade_item`, `valor_total`, `telefone`, `endereco_entrega`, `status`, `data`, `id_usuario`) VALUES
(74, 'Flavio sousa de Castro', 'a;Agora;Ã© batatÃ£;b;c;Coca-Cola Lata;Esse nome de item Ã© GRANDE;Esse nome de item Ã© pra ser grande;teste;teste;', '1;1;1;1;1;1;1;1;1;1;', '227', '99', 'Rua: CustÃ³dio Nunes, n 294', '2', '2019-02-15 15:30:33', 103),
(73, 'Flavio sousa de Castro', 'Ã© batatÃ£;Esse nome de item Ã© pra ser grande;Esse nome de item Ã© GRANDE;', '1;1;1;', '113', '99999', 'Rua: CustÃ³dio Nunes, n 294', '2', '2019-02-15 15:19:11', 103),
(71, 'Pedi agora', 'batata;', '1;', '5', '9999', 'Rua: CustÃ³dio Nunes, n 294', '2', '2019-02-15 13:37:07', 103),
(72, 'Flavio sousa de Castro', 'Esse nome de item Ã© GRANDE;', '16;', '1584', '88999874309', 'Rua: CustÃ³dio Nunes, n 294', '2', '2019-02-15 15:16:27', 103),
(70, 'Flavio sousa de Castro', 'batata;', '1;', '5', '99', 'Rua: CustÃ³dio Nunes, n 294', '2', '2019-02-15 13:31:59', 103),
(69, 'Flavio sousa de Castro', 'batata;', '1;', '5', '99', 'Rua: CustÃ³dio Nunes, n 294', '2', '2019-02-15 13:29:35', 103),
(68, 'Flavio sousa de Castro', 'Agora;', '1;', '50', '99887847', 'Rua: CustÃ³dio Nunes, n 294', '2', '2019-02-15 13:23:48', 103),
(67, 'Flavio sousa de Castro', 'Xburguer;', '1;', '3.55', '99', 'Rua: CustÃ³dio Nunes, n 294', '2', '2019-02-07 14:45:13', 103);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fantasia` varchar(100) CHARACTER SET latin1 NOT NULL,
  `razao_social` varchar(100) CHARACTER SET latin1 NOT NULL,
  `endereco` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cidade` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bairro` varchar(30) CHARACTER SET latin1 NOT NULL,
  `cgf` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `codigo` varchar(50) CHARACTER SET latin1 NOT NULL,
  `com` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cnpj` varchar(50) CHARACTER SET latin1 NOT NULL,
  `condicoes_pagamento` varchar(20) CHARACTER SET latin1 NOT NULL,
  `comprador` varchar(50) CHARACTER SET latin1 NOT NULL,
  `observacao` varchar(100) CHARACTER SET latin1 NOT NULL,
  `frete` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fabrica` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cif` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ipi` varchar(50) CHARACTER SET latin1 NOT NULL,
  `opcao` varchar(20) CHARACTER SET latin1 NOT NULL,
  `desconto` varchar(50) NOT NULL,
  `pedido_data` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`idpedido`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idpedido`, `nome_fantasia`, `razao_social`, `endereco`, `cidade`, `bairro`, `cgf`, `fone`, `codigo`, `com`, `cnpj`, `condicoes_pagamento`, `comprador`, `observacao`, `frete`, `fabrica`, `cif`, `ipi`, `opcao`, `desconto`, `pedido_data`, `id_usuario`) VALUES
(35, 'dawd', 'dawd', 'dawd', 'dawd', 'dawd', '', '', '', '', '', '', '', '', '', '', 'Sim', 'Sim', 'Duplicata', '', '2018-10-17', 103),
(3, 'Flavio sousa de Castro', 'Flavio sousa de Castro', 'dawd', 'OrÃ³s', 'CearÃ¡', 'ddd', '', '', '555', '', '', '', '', '', '', '', '', 'NÃ£o informado', '', '2018-10-07', 103),
(5, 'Flavio', 'adwdadaw', 'a', 'a', 'a', 'a', 'adawdawd', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '99', '99', 'Duplicata', '', '2018-10-07', 103),
(37, 'dawdw', 'dawd', 'dawd', 'dawd', 'dawda', 'dawd', '', '', '', '', '', '', '', '', '', 'NÃ£o', 'NÃ£o', 'Duplicata', '', '2018-10-17', 103),
(38, 'dawd', 'dawd', 'dawd', 'dada', 'dawd', 'cgfaqui', '', '', '', '', '', '', '', '25', '', 'Sim', 'Nao', 'Cheque', '50', '2018-10-17', 103),
(43, 'daw', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sim', 'Sim', 'Duplicata', '', '2019-01-06', 103),
(36, 'ddddddddddddddddd', 'dawd', 'dawd', 'dawd', 'dawda', 'dawd', '', '', '', '', '', '', '', '', '', 'Sim', 'Sim', 'Cheque', '', '2018-10-17', 103),
(32, 'dawd', 'dawd', 'dawd', 'dawd', 'dawd', 'dawd', '', '', '', '', '', '', '', '', '', '', '', 'Duplicata', '', '2018-10-14', 103);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_item`
--

DROP TABLE IF EXISTS `pedido_item`;
CREATE TABLE IF NOT EXISTS `pedido_item` (
  `id_pedido_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `id_item_estr` int(11) DEFAULT NULL,
  `quantidade_item` varchar(50) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`id_pedido_item`),
  KEY `fk_pedidoitem_item` (`id_item_estr`),
  KEY `fk_pedidoitem_pedido` (`id_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido_item`
--

INSERT INTO `pedido_item` (`id_pedido_item`, `id_pedido`, `id_item_estr`, `quantidade_item`, `valor`) VALUES
(23, 43, 1, '', 1),
(21, 43, 15, '', 1),
(7, 38, 11, '2', 122),
(30, 43, 10, '', 1),
(29, 43, 17, '', 1),
(31, 43, 13, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(15) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `frase_usuario` varchar(100) NOT NULL,
  `usuario_usuario` varchar(100) NOT NULL,
  `senha_usuario` varchar(32) NOT NULL,
  `nivel` int(3) NOT NULL,
  `status` varchar(30) NOT NULL,
  `usuario_logado` int(50) NOT NULL,
  `horario` varchar(50) NOT NULL,
  `arquivo_usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `frase_usuario`, `usuario_usuario`, `senha_usuario`, `nivel`, `status`, `usuario_logado`, `horario`, `arquivo_usuario`) VALUES
(147, 'k-Burguer ', 'Pediu Chegou', 'kburguer', '8ce4b16b22b58894aa86c421e8759df3', 1, 'Ativo', 0, '13:00', 'd57e3cf8390ef4aceae066129cb15edc.jpg'),
(103, 'Lanchonete TheFood', 'Seu melhor lugar para comprar', 'flavio', 'f76405ac130dac085b2a6249073b213b', 1, 'Ativo', 1, '17:00', 'f920f3e4d7e66d704db98abea1bd9342.jpg'),
(151, 'teste', 'teste@testehotmail.com', 'teste', '698dc19d489c4e4db73e28a713eab07b', 1, 'Inativo', 1, '18:00', ''),
(153, '1', 'flavio', 'flavio', '21232f297a57a5a743894a0e4a801fc3', 0, 'Ativo', 0, '20:00', ''),
(160, 'Pastelaria SÃ£o JosÃ©', 'Aqui se combra bem', 'pastelaria', '90c221dd7b168a273d03959c3441e0b0', 1, 'Ativo', 1, '13:00', '0b00e1767ef5eede1e8cab2574a4393c.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
