-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Set-2021 às 03:23
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
(190, 5, 190);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_coment` int NOT NULL,
  `servico` int NOT NULL,
  `user` int NOT NULL,
  `comentario` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id_coment`, `servico`, `user`, `comentario`) VALUES
(5, 194, 2, 'teste'),
(6, 194, 2, 'testete'),
(7, 194, 2, 'testetete'),
(9, 195, 2, 'teste'),
(13, 195, 2, 'ok'),
(14, 195, 2, 'cadastrando!'),
(15, 195, 11, 'testado mais uma vez'),
(16, 195, 11, 'Serviço muito foda! kek'),
(17, 191, 11, 'ta doido, tio'),
(18, 194, 13, 'sdhajajsdhaj shd yasd ayd yasgydj aysj dag djaysd gjad gaysjd adjayg jaygd avbands vanbdv adh  hsdflo sghoif sygdf osuydgf ousadyfgsdfusndhfg sdo gsd yusgd fsodufy sdgf shdjf osdy gfsduof ygsadouf asdfhjsdfh bsajd ksagd faysfgaspdfysdpfysg djf hbwfou q fd0fgdsofh sqf hsgdf ysgdfy sjdfshdfj sgdf'),
(19, 194, 13, 'mais uma vez'),
(20, 190, 13, 'minecraft comunista fodasekkkkkkkkkkkkkkk bão demais'),
(21, 194, 11, 'Serviço excelente, no precinho e bom custo beneficio.'),
(22, 194, 13, 'oxente'),
(23, 195, 4, 'A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações para testar e ajustar aspectos visuais antes de utilizar conteúdo real. A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações para testar e ajustar aspectos visuais antes de utilizar conteúdo real.'),
(24, 194, 14, 'Meus serviços sao excletnes mlk'),
(25, 177, 14, 'maneiro'),
(27, 179, 14, 'teste'),
(28, 179, 14, 'asd'),
(29, 190, 14, 'ok'),
(30, 192, 11, 'mais uma vez');

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
(2, 194, NULL, 'pediu para abaixar o preço'),
(3, 194, NULL, 'pediu para abaixar o preço'),
(4, 192, NULL, 'pediu para abaixar o preço'),
(5, 174, NULL, 'pediu para abaixar o preço'),
(6, 194, NULL, 'pediu para abaixar o preço'),
(7, 180, NULL, 'pediu para abaixar o preço'),
(8, 195, NULL, 'pediu para abaixar o preço'),
(9, 194, NULL, 'pediu para abaixar o preço'),
(11, 195, NULL, 'pediu para abaixar o preço'),
(12, 195, NULL, 'pediu para abaixar o preço'),
(13, 194, NULL, 'pediu para abaixar o preço'),
(14, 195, NULL, 'pediu para abaixar o preço'),
(15, 195, NULL, 'pediu para abaixar o preço');

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
(195, 'testando git', 2, 'asd', '9db360263cd94fe6e7367f9a4bef7d25.jpg', 4, 123, NULL);

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
(3, 'Kayke', '11111111111', 'teste1', 'kaykebiscegli2005@gmail.com', 1, 'd2d10d32ad083f26e04eb0ea81fa3523.png', NULL),
(5, 'Feitosa', '2', '1234', 'feitosa@gmail.com', 2, '', NULL),
(8, 'Raphael Tesste', '31', '123', 'kk@hotmail.com', 1, 'f64b290ab69f6724f722f13b8d8cee20', NULL),
(11, 'Kekinho do /b/', '4321', '123', '123@gmail.com', 1, '03f939be65c2507760ac8e69b4643c11.png', NULL),
(13, 'Mc Poze do Rodo!', '123123', '123', 'eu@gmail.com', 1, '8ab830802e3bb19a83b38d3d88b7f8d7.png', '2021-08-13 18:36:36'),
(14, 'Jubiscleidson', '123', '123', 'trollface@gmail.com', 1, 'c5c9caecdff44c776af82dfd44ef2bc9.jpg', '2021-08-25 19:37:53');

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
  MODIFY `id_classificacao` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_coment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `encontro`
--
ALTER TABLE `encontro`
  MODIFY `id_encontro` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `preco`
--
ALTER TABLE `preco`
  MODIFY `id_preco` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id_servico` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

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
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
