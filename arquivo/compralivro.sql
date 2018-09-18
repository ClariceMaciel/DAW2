-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Jul-2018 às 01:22
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `compralivro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id` int(2) NOT NULL,
  `genero_livro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id`, `genero_livro`) VALUES
(1, 'terror'),
(2, 'poesia'),
(3, 'romance'),
(4, 'ficcao cientifica'),
(5, 'drama'),
(6, 'biografia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `codisbn` int(2) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `preco` int(8) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `id_genero` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`codisbn`, `titulo`, `autor`, `preco`, `imagem`, `descricao`, `id_genero`) VALUES
(7, 'Coraline', 'Neil Gaiman', 12, 'Coraline-177549.jpg', 'A histÃ³ria de uma menina ', 1),
(9, 'o oceano no fim do caminho', 'Neil Gaiman', 16, '113678424SZ.jpg', 'Foi hÃ¡ quarenta anos, agora ele lembra muito bem. Quando os tempos ficaram difÃ­ceis e os pais decidiram que o quarto do alto da escada, que antes era dele passaria a receber hÃ³spedes. Ele sÃ³ tinha sete anos. Um dos inquilinos foi o minerador de opala. O homem que certa noite roubou o carro da famÃ­lia e, ali dentro, parado num caminho deserto, cometeu suicÃ­dio. O homem cujo ato desesperado despertou forÃ§as que jamais deveriam ter sido perturbadas. ForÃ§as que nÃ£o sÃ£o deste mundo', 3),
(10, 'o guia do mochileiro das galaxias', 'Douglas Adams', 40, '110092217_2GG.jpg', 'O guia do mochileiro das galÃ¡xias comeÃ§ou sua histÃ³ria como uma sÃ©rie de rÃ¡dio e, depois, uma compilaÃ§Ã£o em fita cassete. Transformado em livro, tornou-se um best-seller mundial e foi parar, de forma curiosa, na televisÃ£o britÃ¢nica.', 4),
(11, 'A Metamorfose', 'Franz Kafka', 21, 'A-Metamorfose.jpg', 'A Metamorfose é um pequeno livro de autoria do escritor austro-húngaro Franz Kafka. Apesar do texto ter sido feito em 1912 e concluído em apenas 20 dias, ele só foi publicado no ano de 1915. A novela foi escrita originalmente em alemão e conta a história do caixeiro-viajante Gregor, que um dia acorda metamorfoseado em um enorme inseto.', 4),
(13, 'A Morte de Ivan Ilitch', 'Liev Tolstoi', 13, 'a-morte-de-ivan-ilitch-em-quadrinhos-liev-tolstoi-8575963139_600x600-PU6eb8ab99_1.jpg', 'Nesta novela - considerada uma das mais perfeitas já escritas, Tolstói narra a história de Ivan Ilitch, um juiz de instrução que, depois de alcançar uma vida confortável, descobre que tem uma grave doença. A Partir daí, este passa a refletir sobre o sentido de sua existência, numa experiência-limite de rara força poética, que só a grande literatura consegue traduzir.', 3),
(14, 'Medo Clássico', 'Edgar Allan Poe', 38, 'edgar.png', 'A composição Edgar Allan Poe - Col. Medo Clássico é um tributo ao reconhecido autor de contos de terror, o mestre desse tipo de literatura que, há mais de 200 anos de criação, segue atraindo gerações e gerações para a obra consagrada.\r\n\r\nNão bastasse a atração dos apaixonados por livros desse gênero, a obra de Edgar Allan Poe é tão rica que também faz parte de diversas teses de mestrado pelo mundo.\r\n\r\nO sucesso representado em Edgar Allan Poe - Col. Medo Clássico fez com que a história fosse reproduzida em outros canais como o cinema e a televisão. Assim, a obra fez com que diversos autores, de variados gêneros, também fossem consagrados. São eles: Henry James, Franz Kafka, Júlio Verne, Oscar Wilde, Arthur Conan Doyle, Vladimir Nabokov e Jorge Luis Borges.\r\n', 1),
(15, 'Star Wars - Marcas da Guerra', 'Chuck Wendig', 23, '124492060SZ.jpg', 'O que aconteceu depois da destruição da segunda Estrela da Morte? Qual o destino dos remanescentes do Império Galáctico e dos antigos Rebeldes, agora responsáveis pela fundação da Nova República? Marcas da guerra é o primeiro livro do cânone oficial a mostrar o que acontece depois do clássico Episódio VI: O retorno de Jedi, dando pistas sobre o que podemos esperar da nova trilogia que se inicia com o O despertar da Força, a ser lançado nos cinemas em dezembro. Nesse novo panorama galáctico, vamos descobrir que a guerra ainda não chegou ao fim... e que os traumas deixados por ela ainda serão sentidos por muitos e muitos ciclos. Capitão Wedge Antilles, almirante Ackbar, almirante Sloane, o garoto Temmin e a mãe, Norra Wexley, a caçadora de recompensas Jas Emari, o antigo agente imperial Sinjir: novos personagens e velhos conhecidos dos amantes da saga, que sempre estiveram envolvidos na luta, agora devem escolher o lado a que deverão jurar lealdade. Deverão colocar-se ao lado da Nova República, procurando estabelecer um novo governo democrático na galáxia? Ou juntar-se às fileiras imperiais, na tentativa de voltar ao poder absoluto depois das mortes dos lordes Sith Palpatine e Darth Vader?', 4),
(16, 'Mitologia Nórdica', 'Neil Gaiman', 27, 'res_a571faec8c824e07d093e4a2b36668a1_full.jpg', 'Uma jornada da origem do universo até o fim do mundo.\r\nQuem, além de Neil Gaiman, poderia se tornar cúmplice dos deuses e usar de sua habilidade com as palavras para recontar as histórias dos mitos nórdicos? Fãs e leitores sabem que a mitologia nórdica sempre teve grande influência na obra do autor. Depois de servirem de inspiração para clássicos como Deuses americanos e Sandman, Gaiman agora investiga o universo dos mitos nórdicos. Em Mitologia nórdica, ele vai até a fonte dos mitos para criar sua própria versão, com o inconfundível estilo sagaz e inteligente que permeia toda a sua obra. Fascinado por essa mitologia desde a infância, o autor compôs uma coletânea de quinze contos que começa com a narração da origem do mundo e mostra a relação conturbada entre deuses, gigantes e anões, indo até o Ragnarök, o assustador cenário do apocalipse que vai levar ao fim no mundo. Às vezes intensos e sombrios, outras vezes divertidos e heroicos, os contos retratam tempos longínquos em que os feitos dos deuses eram contados ao redor da fogueira em noites frias e estreladas. “Mitologia nórdica” é o livro perfeito para quem quer descobrir mais sobre a mitologia escandinava e também para aqueles que desejam desvelar novas facetas dessas histórias.\r\n• Mitologia nórdica é uma obra de referência, um novo e precioso registro dos pouco conhecidos mitos escandinavos.\r\n• Os mitos nórdicos estão em obras que se tornaram bastante populares, como os livros de J. R. R. Tolkien, a série de TV Game of Thrones, nas HQs e filmes da Marvel. E, em abril, estreia a adaptação de Deuses americanos para a TV.\r\n• Juntos, os livros de Neil Gaiman lançados pela Intrínseca já venderam mais de 100 mil exemplares. \r\n“Neil Gaiman é uma máquina humana de criar histórias.” Washington Post', 4),
(17, 'Harry Potter e A Pedra Filosofal 1', 'Rowling, J. K.', 22, 'download.jpg', 'Em Harry Potter e a Pedra Filosofal, o leitor é apresentado a Harry, filho de Tiago e Lílian Potter, feiticeiros que foram assassinados por um poderosíssimo bruxo, quando ele ainda era um bebê. Com isso, o menino acaba sendo levado para a casa dos tios que nada tinham a ver com o sobrenatural pelo contrário. Até os 10 anos, Harry foi uma espécie de gata borralheira: maltratado pelos tios, herdava roupas velhas do primo gorducho, tinha óculos remendados e era tratado como um estorvo. No dia de seu aniversário de 11 anos, entretanto, ele parece deslizar por um buraco sem fundo, como o de Alice no país das maravilhas, que o conduz a um mundo mágico. Descobre sua verdadeira história e seu destino: ser um aprendiz de feiticeiro até o dia em que terá que enfrentar a pior força do mal, o homem que assassinou seus pais, o terrível Lorde das Trevas. ', 4),
(18, 'De Volta Para o Futuro - Os Bastidores da Trilogia', 'Gaines ,Caseen', 37, 'download.png', 'O futuro é agora! O livro oficial sobre os bastidores da Trilogia. O futuro está de volta. Há 30 anos, Marty McFly fazia sua primeira viagem no tempo, a bordo de um DeLorean. Tinha início uma das maiores trilogias da história do cinema. De Volta Para o Futuro é um marco da cultura pop, conquistando gerações de fãs leais a cada reprise na tv ou nos relançamentos em todas as mídias possíveis, do vhs piratão aos modernos vídeos on demand. Para comemorar o 30º aniversário da saga que reinventou a ficção científica, com boas doses de humor e aventura, a DarkSide® Books tem o prazer de anunciar mais um lançamento imperdível para qualquer geek que se preze: De Volta Para o Futuro: We Don’t Need Roads – Os Bastidores da Trilogia', 4),
(20, 'O Exterminador do Futuro - Classic Edition ', 'Cameron,James / Frakes,Randall / Wisher,Bill', 23, 'exterminador.png', 'Mais mortal que qualquer outro ser vivo!\r\nO ano é 1984... mas ele vem do Ano da Escuridão, 2029. Ele foi criado para transformar o futuro destruindo o presente. Não sente piedade, dor, medo. Não sente nada. Ele é uma máquina mortífera programada para matar e impossível de ser parada. Ele é...\r\nUm ciborgue de aparência humana, indestrutível, é enviado de 2029 –ara 1984 para assassinar uma garçonete, cujo filho ainda não nascido vai liderar a humanidade em uma guerra contra as máquinas, enquanto um soldado dessa mesma guerra é enviado para protegê-la a todo custo.', 4),
(21, 'Alien', 'Foster, Alan Dean', 23, 'alien.jpg', 'A tripulação da nave Nostromo é despertada antes do tempo de seu sono criogênico. Misteriosos sinais vindos dos confins do espaço são recebidos pelo computador de bordo, e a equipe é acionada para investigar um planeta desconhecido. Um tripulante é atacado por uma forma de vida estranha, e esse pode ser o início de uma história pior que os mais terríveis pesadelos da humanidade.', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nascimento` date NOT NULL,
  `RG` int(10) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `nascimento`, `RG`, `tipo`, `senha`) VALUES
(1, 'Clarice Maciel', 'clarice.k.maciel98@hotmail.com', '1998-10-26', 912002107, 'administrador', '3215'),
(2, 'clarice maciel', 'claricel.k.maciel98@hotmail.com', '1998-10-26', 2147483647, 'usuario', '123'),
(4, 'Logan ', 'logan@XMEN.com', '2018-03-12', 2147483647, 'usuario', '798754321');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `CEP` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `quantidade` int(100) NOT NULL,
  `formapag` text NOT NULL,
  `data` date NOT NULL,
  `valor_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `id_livro`, `id_usuario`, `CEP`, `estado`, `quantidade`, `formapag`, `data`, `valor_total`) VALUES
(1, 7, 4, 'Livramento City', 'Entregue', 1, 'Cartão de Crédito', '2018-05-08', 0),
(2, 10, 2, 'Santana do Livramento - Cézar Pietro ', 'Entregue', 1, 'Boleto', '2018-05-07', 0),
(3, 9, 2, 'Santana do Livramento', 'A caminho de destinatário', 1, 'Boleto', '2018-05-24', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_produto`
--

CREATE TABLE `venda_produto` (
  `id_venda` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda_produto`
--

INSERT INTO `venda_produto` (`id_venda`, `id_livro`, `quantidade`) VALUES
(1, 7, 1),
(2, 10, 1),
(3, 9, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`codisbn`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livro` (`id_livro`) USING BTREE,
  ADD KEY `id_usuario` (`id_usuario`) USING BTREE;

--
-- Indexes for table `venda_produto`
--
ALTER TABLE `venda_produto`
  ADD KEY `id_venda` (`id_venda`),
  ADD KEY `venda_produto_ibfk_2` (`id_livro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `codisbn` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`codisbn`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Limitadores para a tabela `venda_produto`
--
ALTER TABLE `venda_produto`
  ADD CONSTRAINT `venda_produto_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id`),
  ADD CONSTRAINT `venda_produto_ibfk_2` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`codisbn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
