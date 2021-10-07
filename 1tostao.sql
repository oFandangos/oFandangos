-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Out-2021 às 02:51
-- Versão do servidor: 8.0.20
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `1tostao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL,
  `nome_cat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_cat`) VALUES
(1, 'Programacao'),
(2, 'Edicao de Video'),
(3, 'Arte Digital'),
(4, 'Design');

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacao`
--

CREATE TABLE `classificacao` (
  `id_classificacao` int NOT NULL,
  `nota` int NOT NULL,
  `servico_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `classificacao`
--

INSERT INTO `classificacao` (`id_classificacao`, `nota`, `servico_id`) VALUES
(4, 3, 191),
(7, 5, 191),
(8, 5, 191),
(9, 2, 191),
(10, 3, 191),
(11, 1, 191),
(12, 5, 191),
(13, 5, 192),
(14, 3, 192),
(15, 3, 192),
(16, 3, 192),
(18, 5, 191),
(19, 5, 192),
(20, 5, 193),
(21, 4, 193),
(22, 5, 193),
(63, 1, 179),
(69, 1, 192),
(70, 1, 193),
(108, 4, 190),
(121, 5, 192),
(122, 4, 192),
(123, 5, 192),
(124, 5, 192),
(125, 5, 192),
(126, 5, 192),
(127, 5, 192),
(128, 5, 192),
(129, 5, 192),
(130, 5, 192),
(131, 5, 192),
(132, 5, 192),
(133, 4, 192),
(134, 4, 192),
(135, 4, 192),
(136, 5, 192),
(137, 4, 192),
(138, 4, 193),
(139, 5, 192),
(140, 5, 192),
(141, 5, 192),
(142, 5, 193),
(143, 5, 192),
(144, 5, 191),
(145, 5, 191),
(146, 5, 189),
(147, 3, 189),
(148, 4, 189),
(149, 1, 189),
(150, 5, 189),
(151, 1, 192),
(152, 2, 193),
(153, 5, 192),
(154, 1, 193),
(155, 5, 189),
(156, 5, 177),
(157, 2, 177),
(158, 5, 177),
(159, 5, 184),
(160, 5, 193),
(161, 3, 177),
(162, 4, 194),
(163, 1, 194),
(164, 5, 194),
(165, 4, 194),
(166, 5, 192),
(167, 5, 193),
(168, 5, 179),
(169, 5, 194),
(170, 4, 194),
(171, 5, 192),
(172, 4, 192),
(173, 1, 174),
(174, 5, 194),
(175, 3, 180),
(176, 5, 195),
(177, 3, 194),
(178, 4, 195),
(179, 5, 195),
(180, 4, 195),
(182, 1, 193),
(183, 5, 195),
(184, 3, 175),
(185, 5, 195),
(186, 5, 194),
(187, 5, 194),
(188, 5, 194),
(189, 5, 194),
(190, 5, 190),
(191, 5, 191),
(192, 5, 195),
(193, 1, 195),
(194, 5, 204),
(195, 1, 204),
(196, 5, 204),
(197, 5, 204),
(198, 5, 204),
(199, 5, 204),
(200, 5, 204),
(201, 5, 205),
(202, 5, 205),
(203, 5, 205),
(204, 5, 205),
(205, 5, 204);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_coment` int NOT NULL,
  `servico` int NOT NULL,
  `user` int NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `data_comment` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id_coment`, `servico`, `user`, `comentario`, `data_comment`) VALUES
(47, 181, 14, 'testetee', '2021-10-01'),
(48, 195, 14, 'teste', '2021-10-01'),
(49, 182, 14, 'delete from comentaiors;\r\n', '2021-10-01'),
(50, 204, 14, 'tste\r\n', '2021-10-01'),
(51, 195, 14, 'daora\r\n', '2021-10-01'),
(52, 204, 13, 'quem sou eu?', '2021-10-01'),
(53, 204, 13, 'teste', '2021-10-01'),
(54, 195, 11, 'testing date and nick', '2021-10-02'),
(55, 204, 30, 'Fun fact: Lee used the first ever guitar that he recorderd with with Bring Me The Horizon to record the guitar solo because it reminded him of Count Your Blessings', '2021-10-02'),
(56, 205, 2, 'kek', '2021-10-04'),
(57, 205, 32, 'o anão ataca novamente', '2021-10-06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `encontro`
--

CREATE TABLE `encontro` (
  `id_encontro` int NOT NULL,
  `cliente` int NOT NULL,
  `servico` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacao`
--

CREATE TABLE `notificacao` (
  `id_notf` int NOT NULL,
  `servico_notf` int NOT NULL,
  `user_notf` int NOT NULL,
  `servico_id_notf` int NOT NULL,
  `mensagem` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `data_notf` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `notificacao`
--

INSERT INTO `notificacao` (`id_notf`, `servico_notf`, `user_notf`, `servico_id_notf`, `mensagem`, `status`, `data_notf`) VALUES
(1, 2, 14, 195, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 19:44:56'),
(2, 2, 14, 195, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 19:44:57'),
(3, 2, 14, 195, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 19:44:58'),
(4, 2, 14, 195, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 19:44:59'),
(5, 2, 14, 195, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 19:45:00'),
(6, 11, 14, 191, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 20:12:41'),
(7, 14, 2, 204, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 20:29:11'),
(8, 14, 2, 204, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 20:29:14'),
(18, 11, 13, 191, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 21:46:43'),
(19, 13, 2, 192, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 21:49:09'),
(20, 13, 2, 192, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 21:49:11'),
(21, 13, 2, 192, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 21:49:12'),
(22, 13, 2, 192, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 21:49:13'),
(23, 13, 2, 192, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-01 21:49:46'),
(24, 14, 11, 204, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-02 15:50:45'),
(25, 30, 2, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-02 18:17:45'),
(26, 30, 14, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-02 18:18:08'),
(27, 13, 30, 192, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-02 18:20:31'),
(28, 13, 30, 192, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-02 18:20:46'),
(29, 30, 2, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-04 17:18:47'),
(30, 2, 2, 195, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 16:50:17'),
(31, 2, 14, 195, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 17:15:14'),
(32, 30, 13, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 17:16:49'),
(33, 30, 11, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 17:16:59'),
(34, 30, 2, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 17:21:41'),
(35, 30, 30, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 17:45:18'),
(36, 30, 30, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 17:49:46'),
(37, 5, 30, 177, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 22:37:05'),
(38, 5, 30, 177, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 22:37:07'),
(39, 5, 30, 177, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 22:37:09'),
(40, 5, 30, 177, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 22:37:10'),
(41, 5, 30, 177, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-05 22:37:10'),
(42, 30, 2, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-06 18:18:50'),
(43, 30, 2, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-06 18:18:52'),
(44, 30, 2, 205, 'Pediu para abaixar o preço do serviço', 'read', '2021-10-06 18:18:53'),
(45, 14, 30, 204, 'Pediu para abaixar o preço do serviço', 'unread', '2021-10-06 20:47:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `preco`
--

CREATE TABLE `preco` (
  `id_preco` int NOT NULL,
  `servico` int NOT NULL,
  `user` int DEFAULT NULL,
  `mensagem` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `preco`
--

INSERT INTO `preco` (`id_preco`, `servico`, `user`, `mensagem`) VALUES
(60, 195, 2, 'asd'),
(61, 195, 2, 'aseuahseuah'),
(62, 193, 2, 'abaixa essa porra ai tio'),
(63, 194, 2, 'baixa'),
(64, 204, 11, 'testando pechincha'),
(65, 195, 2, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servico` int NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `autor` int NOT NULL,
  `desc_servico` varchar(500) DEFAULT NULL,
  `img_servico` varchar(70) DEFAULT NULL,
  `sub_cat` int NOT NULL,
  `valor` int NOT NULL,
  `btn` varchar(3600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id_servico`, `titulo`, `autor`, `desc_servico`, `img_servico`, `sub_cat`, `valor`, `btn`) VALUES
(174, 'testeadndo', 5, 'asd', 'd2668572380d5428faeb0d3dc4247335.jpg', 4, 123, NULL),
(175, 'teste2', 5, '3', 'd52b1cacb5e256469191700d31f50208.jpg', 4, 2, NULL),
(176, 'LOUCURA', 5, 'sadf', 'cd3aaeff532c9d739d93343dca483b07.jpg', 4, 9000, NULL),
(177, 'Programação backend com python', 5, 'Desenvolvimento de sistema backend utilizando linguagem python.', 'a672b7ee81d64ee4f7de3df3405dab9e.jpg', 4, 3200, NULL),
(179, 'Vegas 15', 2, 'Loucura em vegas 15 e after effects', '4d3fc25a38ef4786b6ae1eac264d887ajpeg', 6, 230, NULL),
(180, 'teste', 2, 'teste', '03ca3a72a26649333f11531ff4d742ba.png', 4, 1231, NULL),
(181, '0000', 2, '0000', '10ebf4c98e484cb87c1f5fde1ab13dc9jpeg', 4, 23, NULL),
(182, 'hfhf', 2, '0000', '749ab56b9b281a1ea49207cbf6ffe9c9jpeg', 4, 234, NULL),
(183, 'nem fodendo', 2, '123', 'f665cfe0b26b880e7f690ce1fbeccd9fjpeg', 4, 123, NULL),
(184, 'loucura', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', '721624425afca034b6a718dce69bb060.jpg', 4, 3, NULL),
(189, 'teste número 8082', 8, 'LOREM IMPUMS HSEUAHSE OKU AHSKA ASÇ D´SA8 SADUBAYDOUJA SDGFHYOSALD FSULOF SAGFHBJASLOD HFASBDFUOL SDVF ASDF BSAFDH LKJSADFYAHSDFLÇ SDFJ SDFB LSDAFHASVBDUFJSAVDF HGDJBSNDHFJLHJUSAHYVF LAJHS LJHFD BVSF V', 'dc49053df3e6414135fdfa4e6f3ea2d6.png', 6, 123, NULL),
(190, 'não sei números primos', 8, 'loucura minhas senhoras e meus senhroes', 'e24e4247100c8e4eff1f37f733dbcff7.png', 5, 300, NULL),
(191, 'Serviço comunitário', 11, 'vou limpar tua calçada como ninguém nunca limpou antes, chefia, pode ficar tranquilo!', 'b24fce19dbe1d4982aa6593f8176cb38.png', 6, 436, NULL),
(192, 'Testando datetime ', 13, 'testando datetime testando datetime testando datetime testando datetime testando datetime testando datetime testando datetime testando datetime testando datetime testando datetime testando datetime testando datetime testando datetime ', '281c4b3978e63d4290267473a11a2ddc.jpg', 5, 357, NULL),
(193, 'tessttst', 11, 'sdaddsasda', '5698bdddfc6ce14376b762ab8c2695f2.png', 4, 1231, NULL),
(194, 'teste numero 100 com php', 14, 'KASLKKASDJ KAJSKKSDAKSJ DKSAJS KSAJSDKAJSKDJAKS DJAKDJKDJK AJSKD JAKSDJAKSJ KAJKDAJSKDAJSK DAJSKDJAKJSD KAJSKDJAKS JAKJ KJASKDJ KASJDK JAK DJKJ KJAK JAKSJDKAJSDJAKSDJHASHD JAGHSGDASTDGASDTYAGS ATFDUYTDF UASSFDU YASF UASDTASFDYU ASDF TASYD UASTD YATFSD UASDT FASUYDTSAFDU YTASDFUSY DTSF UTSDF USATD FSAUD TSFUDY TSAUDTSDY TSFYD FSYTA DFYTF YSFA YDTAFY TSFDY ', '8e3eeb37b39bb10e37ad0c082a8779cd.png', 4, 9000, NULL),
(195, 'testando git', 2, 'asd', '9db360263cd94fe6e7367f9a4bef7d25.jpg', 4, 123, NULL),
(204, 'Programação em REACT, JQUERY e NodeJS', 14, 'vou fazer tudo isso ai que eu escrevi no titulo kkkkkkkkkkkk', '5f0196632ba1cd3e5389b208ead779b4.jpg', 4, 3200, ''),
(205, 'Desenvolvimento de website com Mysql, PHP e Javascript', 30, 'BMTH should be a case study. They managed to change their genres on each album and now, they find out a way to combine them all together, pleasing both new and old fans. Damn, you guys really did it. Dissapointed to not see a single comment mention the fact that former Doom and Doom Eternal composer Mick Gordon helped produce this whole album and you can totally hear the influence from his work on Doom! I love it, and need more. Mick made a good move leaving Bethesda!\r\n', 'c1610424e26f7f8b8f78bf48b43a688c.gif', 4, 1250, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub_categoria`
--

CREATE TABLE `sub_categoria` (
  `id_sub_cat` int NOT NULL,
  `nome_sub_cat` varchar(30) NOT NULL,
  `categoria` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `sub_categoria`
--

INSERT INTO `sub_categoria` (`id_sub_cat`, `nome_sub_cat`, `categoria`) VALUES
(4, 'Programacao em Python', 1),
(5, 'Figma', 3),
(6, 'Edicao em Vegas', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `desc_tipo` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `tipo`, `desc_tipo`) VALUES
(1, 'A', 'ADM'),
(2, 'U', 'User comum');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `nome` varchar(70) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `tipo` int NOT NULL,
  `img_user` varchar(70) NOT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id_user`, `nome`, `cpf`, `senha`, `email`, `tipo`, `img_user`, `data`) VALUES
(1, 'Victor', '000000000', 'teste1', 'joca11victor@gmail.com', 1, '5ca059665815f02ac4f13e1ade100939', NULL),
(2, 'Raphael', '69420', '080904', 'raphael.feitosa11@gmail.com', 1, '4714f917772aa37278533606aae32433.jpg', NULL),
(5, 'Feitosa', '2', '1234', 'feitosa@gmail.com', 2, '', NULL),
(11, 'Kekinho do /b/', '4321', '123', '123@gmail.com', 1, '03f939be65c2507760ac8e69b4643c11.png', NULL),
(13, 'Mc Poze do Rodo!', '123123', '123', 'eu@gmail.com', 1, '8ab830802e3bb19a83b38d3d88b7f8d7.png', '2021-08-13 18:36:36'),
(14, 'Jubiscleidson Juninho', '123', '123', 'trollface@gmail.com', 1, '70ecf3e957abb97d7ff34c1cc9a57ff6.jpg', '2021-08-25 19:37:53'),
(27, 'Lança Perfume de Andrade', '123', '123', 'Lanca@gmail.com', 1, '2b56d9b56feda744087e26542a1f7f4d.jpg', '2021-09-29 22:08:15'),
(28, 'Louquinho Esquizofrenico da Silva', '123', '123', 'louco@kek.com', 1, '77136329d185ad4e6ef7540ebed7e76d.gif', '2021-09-30 19:53:38'),
(29, 'Cobaia de Testes', '123', '123', 'cobaia@google.com', 1, 'a313416e1796688f423e27e9c63b9ab8.bmp', '2021-10-01 16:54:07'),
(30, 'Pegavento YLiga Ascoisa', '123', '123', 'pegavento@gmail.com', 1, '6248aa09e047d5fe5448760f3be97dc9.jpg', '2021-10-02 16:10:51'),
(32, 'Anão do /b/', '123', '123', 'kekinho@based.com', 1, '8e8ca2674a27a41252457f9082498939.jpg', '2021-10-06 21:16:56');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `classificacao`
--
ALTER TABLE `classificacao`
  ADD PRIMARY KEY (`id_classificacao`),
  ADD KEY `id_servico_fk` (`servico_id`);

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_coment`),
  ADD KEY `user_fk` (`user`),
  ADD KEY `servicos_fk` (`servico`);

--
-- Índices para tabela `encontro`
--
ALTER TABLE `encontro`
  ADD PRIMARY KEY (`id_encontro`),
  ADD KEY `id_user_encontro_fk` (`cliente`),
  ADD KEY `id_servico_encontro_fk` (`servico`);

--
-- Índices para tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD PRIMARY KEY (`id_notf`),
  ADD KEY `fk_servico_autor` (`servico_notf`),
  ADD KEY `fk_user` (`user_notf`),
  ADD KEY `fk_servico_id` (`servico_id_notf`);

--
-- Índices para tabela `preco`
--
ALTER TABLE `preco`
  ADD PRIMARY KEY (`id_preco`),
  ADD KEY `servico_fk` (`servico`),
  ADD KEY `user` (`user`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servico`),
  ADD KEY `id_sub_cat_fk` (`sub_cat`),
  ADD KEY `id_user_fk` (`autor`);

--
-- Índices para tabela `sub_categoria`
--
ALTER TABLE `sub_categoria`
  ADD PRIMARY KEY (`id_sub_cat`),
  ADD KEY `id_cat_fk` (`categoria`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email_un` (`email`),
  ADD KEY `id_tipo_fk` (`tipo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `classificacao`
--
ALTER TABLE `classificacao`
  MODIFY `id_classificacao` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_coment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `encontro`
--
ALTER TABLE `encontro`
  MODIFY `id_encontro` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notificacao`
--
ALTER TABLE `notificacao`
  MODIFY `id_notf` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `preco`
--
ALTER TABLE `preco`
  MODIFY `id_preco` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id_servico` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de tabela `sub_categoria`
--
ALTER TABLE `sub_categoria`
  MODIFY `id_sub_cat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `classificacao`
--
ALTER TABLE `classificacao`
  ADD CONSTRAINT `id_servico_fk` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id_servico`);

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `servicos_fk` FOREIGN KEY (`servico`) REFERENCES `servicos` (`id_servico`),
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `encontro`
--
ALTER TABLE `encontro`
  ADD CONSTRAINT `id_servico_encontro_fk` FOREIGN KEY (`servico`) REFERENCES `servicos` (`id_servico`),
  ADD CONSTRAINT `id_user_encontro_fk` FOREIGN KEY (`cliente`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD CONSTRAINT `fk_servico_autor` FOREIGN KEY (`servico_notf`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `fk_servico_id` FOREIGN KEY (`servico_id_notf`) REFERENCES `servicos` (`id_servico`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_notf`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `preco`
--
ALTER TABLE `preco`
  ADD CONSTRAINT `servico_fk` FOREIGN KEY (`servico`) REFERENCES `servicos` (`id_servico`),
  ADD CONSTRAINT `user_pk` FOREIGN KEY (`user`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `id_sub_cat_fk` FOREIGN KEY (`sub_cat`) REFERENCES `sub_categoria` (`id_sub_cat`),
  ADD CONSTRAINT `id_user_fk` FOREIGN KEY (`autor`) REFERENCES `user` (`id_user`);

--
-- Limitadores para a tabela `sub_categoria`
--
ALTER TABLE `sub_categoria`
  ADD CONSTRAINT `id_cat_fk` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Limitadores para a tabela `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `id_tipo_fk` FOREIGN KEY (`tipo`) REFERENCES `tipo` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
