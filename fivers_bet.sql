-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 03/12/2023 às 11:52
-- Versão do servidor: 10.6.15-MariaDB-cll-lve
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u628662031_tigre2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `access_log`
--

CREATE TABLE `access_log` (
  `id` int(11) NOT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `player` int(11) DEFAULT NULL,
  `player_name` varchar(255) DEFAULT NULL,
  `player_partner` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `access_log`
--

INSERT INTO `access_log` (`id`, `origin`, `ip`, `browser`, `platform`, `created_at`, `player`, `player_name`, `player_partner`, `country`) VALUES
(1, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 04:21:06', NULL, NULL, NULL, NULL),
(2, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 01:36:20', 2, 'Victor', NULL, NULL),
(3, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 01:36:23', 2, 'Victor', NULL, NULL),
(4, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 01:36:29', 2, 'Victor', NULL, NULL),
(5, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 02:26:37', NULL, NULL, NULL, NULL),
(6, 'http://179.113.243.57/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 02:26:38', 2, 'Victor', NULL, NULL),
(7, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 02:52:31', 2, 'Victor', NULL, NULL),
(8, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:03:40', NULL, NULL, NULL, NULL),
(9, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:03:41', NULL, NULL, NULL, NULL),
(10, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:04:27', NULL, NULL, NULL, NULL),
(11, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:04:38', NULL, NULL, NULL, NULL),
(12, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:04:59', NULL, NULL, NULL, NULL),
(13, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:05:04', NULL, NULL, NULL, NULL),
(14, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:05:17', NULL, NULL, NULL, NULL),
(15, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:06:07', NULL, NULL, NULL, NULL),
(16, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:06:35', NULL, NULL, NULL, NULL),
(17, 'http://192.168.15.99/', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:06:44', 1, 'Victor Oliveira', NULL, NULL),
(18, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:09:38', 1, 'Victor Oliveira', NULL, NULL),
(19, '', '192.168.65.1', 'Chrome', 'Windows 10', '2023-11-30 17:20:43', 1, 'Victor Oliveira', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `ultimo_login` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `admin`
--

INSERT INTO `admin` (`id`, `usuario`, `senha`, `nome`, `IP`, `criado_em`, `ultimo_login`, `email`) VALUES
(2, 'athilson', '5316e12ef0730073dd193b0d3dc82973', 'athilson', NULL, '2023-11-21 18:08:22', NULL, 'Athilsonjunior@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `afiliados_config`
--

CREATE TABLE `afiliados_config` (
  `porcentagemIndicacao` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `cpaLvl1` decimal(10,2) DEFAULT NULL,
  `cpaLvl2` decimal(10,2) DEFAULT NULL,
  `cpaLvl3` decimal(10,2) DEFAULT NULL,
  `chanceCpa` decimal(5,2) DEFAULT NULL,
  `revShareFalso` decimal(5,2) DEFAULT NULL,
  `revShareLvl1` decimal(5,2) DEFAULT NULL,
  `revShareLvl2` decimal(5,2) DEFAULT NULL,
  `revShareLvl3` decimal(5,2) DEFAULT NULL,
  `minDepForCpa` decimal(10,2) DEFAULT NULL,
  `minResgate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `afiliados_config`
--

INSERT INTO `afiliados_config` (`porcentagemIndicacao`, `id`, `cpaLvl1`, `cpaLvl2`, `cpaLvl3`, `chanceCpa`, `revShareFalso`, `revShareLvl1`, `revShareLvl2`, `revShareLvl3`, `minDepForCpa`, `minResgate`) VALUES
(0, 0, 10.00, 20.00, 30.00, 40.00, 0.00, 0.00, 0.00, 0.00, 50.00, 50.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `image`, `link`, `criado_em`) VALUES
(6, 'ROLETINHA', 'https://betcassino.shop/public/uploads/7003122023085557.png', '', '2023-12-03 08:55:57');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `minSaqueAutomatico` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `telegram` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `suporte` text DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sublogo` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `rodapelogo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `googleAnalytics` text DEFAULT NULL,
  `minplay` int(11) DEFAULT NULL,
  `minsaque` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`minSaqueAutomatico`, `id`, `nome`, `descricao`, `logo`, `telegram`, `instagram`, `whatsapp`, `suporte`, `email`, `sublogo`, `facebook`, `rodapelogo`, `favicon`, `googleAnalytics`, `minplay`, `minsaque`) VALUES
(10, 0, 'BET CASSINO', '', 'http://192.168.15.99/public/uploads/68021102023085614.png', '', '', '', NULL, '', '', '', 'https://betcassino.shop/public/uploads/77803122023105944.png', 'https://asyaslots.com/', '', 30, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currency`
--

CREATE TABLE `currency` (
  `name` varchar(20) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `symbol` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `currency`
--

INSERT INTO `currency` (`name`, `code`, `symbol`) VALUES
('Leke', 'ALL', 'Lek'),
('Dollars', 'USD', '$'),
('Afghanis', 'AFN', '؋'),
('Pesos', 'ARS', '$'),
('Guilders', 'AWG', 'ƒ'),
('Dollars', 'AUD', '$'),
('New Manats', 'AZN', 'ман'),
('Dollars', 'BSD', '$'),
('Dollars', 'BBD', '$'),
('Rubles', 'BYR', 'p.'),
('Euro', 'EUR', '€'),
('Dollars', 'BZD', 'BZ$'),
('Dollars', 'BMD', '$'),
('Bolivianos', 'BOB', '$b'),
('Convertible Marka', 'BAM', 'KM'),
('Pula', 'BWP', 'P'),
('Leva', 'BGN', 'лв'),
('Reais', 'BRL', 'R$'),
('Pounds', 'GBP', '£'),
('Dollars', 'BND', '$'),
('Riels', 'KHR', '៛'),
('Dollars', 'CAD', '$'),
('Dollars', 'KYD', '$'),
('Pesos', 'CLP', '$'),
('Yuan Renminbi', 'CNY', '¥'),
('Pesos', 'COP', '$'),
('Colón', 'CRC', '₡'),
('Kuna', 'HRK', 'kn'),
('Pesos', 'CUP', '₱'),
('Koruny', 'CZK', 'Kč'),
('Kroner', 'DKK', 'kr'),
('Pesos', 'DOP', 'RD$'),
('Dollars', 'XCD', '$'),
('Pounds', 'EGP', '£'),
('Colones', 'SVC', '$'),
('Pounds', 'FKP', '£'),
('Dollars', 'FJD', '$'),
('Cedis', 'GHC', '¢'),
('Pounds', 'GIP', '£'),
('Quetzales', 'GTQ', 'Q'),
('Pounds', 'GGP', '£'),
('Dollars', 'GYD', '$'),
('Lempiras', 'HNL', 'L'),
('Dollars', 'HKD', '$'),
('Forint', 'HUF', 'Ft'),
('Kronur', 'ISK', 'kr'),
('Rupees', 'INR', 'Rp'),
('Rupiahs', 'IDR', 'Rp'),
('Rials', 'IRR', '﷼'),
('Pounds', 'IMP', '£'),
('New Shekels', 'ILS', '₪'),
('Dollars', 'JMD', 'J$'),
('Yen', 'JPY', '¥'),
('Pounds', 'JEP', '£'),
('Tenge', 'KZT', 'лв'),
('Won', 'KPW', '₩'),
('Won', 'KRW', '₩'),
('Soms', 'KGS', 'лв'),
('Kips', 'LAK', '₭'),
('Lati', 'LVL', 'Ls'),
('Pounds', 'LBP', '£'),
('Dollars', 'LRD', '$'),
('Switzerland Francs', 'CHF', 'CHF'),
('Litai', 'LTL', 'Lt'),
('Denars', 'MKD', 'ден'),
('Ringgits', 'MYR', 'RM'),
('Rupees', 'MUR', '₨'),
('Pesos', 'MXN', '$'),
('Tugriks', 'MNT', '₮'),
('Meticais', 'MZN', 'MT'),
('Dollars', 'NAD', '$'),
('Rupees', 'NPR', '₨'),
('Guilders', 'ANG', 'ƒ'),
('Dollars', 'NZD', '$'),
('Cordobas', 'NIO', 'C$'),
('Nairas', 'NGN', '₦'),
('Krone', 'NOK', 'kr'),
('Rials', 'OMR', '﷼'),
('Rupees', 'PKR', '₨'),
('Balboa', 'PAB', 'B/.'),
('Guarani', 'PYG', 'Gs'),
('Nuevos Soles', 'PEN', 'S/.'),
('Pesos', 'PHP', 'Php'),
('Zlotych', 'PLN', 'zł'),
('Rials', 'QAR', '﷼'),
('New Lei', 'RON', 'lei'),
('Rubles', 'RUB', 'руб'),
('Pounds', 'SHP', '£'),
('Riyals', 'SAR', '﷼'),
('Dinars', 'RSD', 'Дин.'),
('Rupees', 'SCR', '₨'),
('Dollars', 'SGD', '$'),
('Dollars', 'SBD', '$'),
('Shillings', 'SOS', 'S'),
('Rand', 'ZAR', 'R'),
('Rupees', 'LKR', '₨'),
('Kronor', 'SEK', 'kr'),
('Dollars', 'SRD', '$'),
('Pounds', 'SYP', '£'),
('New Dollars', 'TWD', 'NT$'),
('Baht', 'THB', '฿'),
('Dollars', 'TTD', 'TT$'),
('Lira', 'TRY', '₺'),
('Liras', 'TRL', '£'),
('Dollars', 'TVD', '$'),
('Hryvnia', 'UAH', '₴'),
('Pesos', 'UYU', '$U'),
('Sums', 'UZS', 'лв'),
('Bolivares Fuertes', 'VEF', 'Bs'),
('Dong', 'VND', '₫'),
('Rials', 'YER', '﷼'),
('Zimbabwe Dollars', 'ZWD', 'Z$'),
('Rupees', 'INR', '₹');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ezzebank`
--

CREATE TABLE `ezzebank` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `ezzebank`
--

INSERT INTO `ezzebank` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(0, 'https://api-sandbox.ezzebank.com/v2', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `financeiro`
--

CREATE TABLE `financeiro` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `financeiro`
--

INSERT INTO `financeiro` (`id`, `usuario`, `saldo`, `bonus`) VALUES
(1, 1, 40.00, 0.00),
(2, 2, 181.30, 0.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `financeiro_config`
--

CREATE TABLE `financeiro_config` (
  `id` int(11) NOT NULL,
  `cod` varchar(45) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `financeiro_config`
--

INSERT INTO `financeiro_config` (`id`, `cod`, `descricao`, `valor`, `status`) VALUES
(1, 'signup-bonus', 'Bônus de cadastro', '10', 1),
(2, 'signup-bonus-text', 'Texto de bônus de cadastro', 'Cadastre-se é ganhe R$10', 0),
(3, 'min-saque', 'Mínimo para saque', '10', 1),
(4, 'deposit-bonus', 'Parâmetro de bônus no deposito', 'doble', 1),
(5, 'deposit-bonus-text', 'Texto de bônus de depósito', 'Quer receber 100% do bônus?', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiverscan`
--

CREATE TABLE `fiverscan` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fiverscan`
--

INSERT INTO `fiverscan` (`id`, `url`, `agent_code`, `agent_token`, `ativo`) VALUES
(0, 'https://api.fiverscan.com', 'rycobet', '245499e83174f07d4be6b48d0954a453', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `game_code` varchar(20) NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `provider` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(1, 'vs243mwarrior', 'Monkey Warrior', 'http://192.168.15.99/public/uploads/29523102023220707.png', 0, 'PRAGMATIC'),
(2, 'vs20doghouse', 'The Dog House', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20doghouse.png', 1, 'PRAGMATIC'),
(3, 'vs40pirate', 'Pirate Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40pirate.png', 1, 'PRAGMATIC'),
(4, 'vs20rhino', 'Great Rhino', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rhino.png', 1, 'PRAGMATIC'),
(5, 'vs25pandagold', 'Panda Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25pandagold.png', 1, 'PRAGMATIC'),
(6, 'vs4096bufking', 'Buffalo King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs4096bufking.png', 1, 'PRAGMATIC'),
(7, 'vs25pyramid', 'Pyramid King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25pyramid.png', 1, 'PRAGMATIC'),
(8, 'vs5ultrab', 'Ultra Burn', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5ultrab.png', 1, 'PRAGMATIC'),
(9, 'vs5ultra', 'Ultra Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5ultra.png', 1, 'PRAGMATIC'),
(10, 'vs25jokerking', 'Joker King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25jokerking.png', 1, 'PRAGMATIC'),
(11, 'vs10returndead', 'Return of the Dead', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10returndead.png', 1, 'PRAGMATIC'),
(12, 'vs10madame', 'Madame Destiny', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10madame.png', 1, 'PRAGMATIC'),
(13, 'vs15diamond', 'Diamond Strike', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs15diamond.png', 1, 'PRAGMATIC'),
(14, 'vs25aztecking', 'Aztec King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25aztecking.png', 1, 'PRAGMATIC'),
(15, 'vs25wildspells', 'Wild Spells', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25wildspells.png', 1, 'PRAGMATIC'),
(16, 'vs10bbbonanza', 'Big Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bbbonanza.png', 1, 'PRAGMATIC'),
(17, 'vs10cowgold', 'Cowboys Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10cowgold.png', 1, 'PRAGMATIC'),
(18, 'vs25tigerwar', 'The Tiger Warrior', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25tigerwar.png', 1, 'PRAGMATIC'),
(19, 'vs25mustang', 'Mustang Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25mustang.png', 1, 'PRAGMATIC'),
(20, 'vs25hotfiesta', 'Hotfiesta', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25hotfiesta.png', 1, 'PRAGMATIC'),
(21, 'vs243dancingpar', 'Dance Party', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243dancingpar.png', 1, 'PRAGMATIC'),
(22, 'vs576treasures', 'Wild Wild Riches', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs576treasures.png', 1, 'PRAGMATIC'),
(23, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20hburnhs.png', 1, 'PRAGMATIC'),
(24, 'vs20emptybank', 'Empty the Bank', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20emptybank.png', 1, 'PRAGMATIC'),
(25, 'vs20midas', 'The Hand of Midas', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20midas.png', 1, 'PRAGMATIC'),
(26, 'vs20olympgate', 'Gates of Olympus', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20olympgate.png', 1, 'PRAGMATIC'),
(27, 'vswayslight', 'Lucky Lightning', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayslight.png', 1, 'PRAGMATIC'),
(28, 'vs20vegasmagic', 'Vegas Magic', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20vegasmagic.png', 1, 'PRAGMATIC'),
(29, 'vs20fruitparty', 'Fruit Party', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20fruitparty.png', 1, 'PRAGMATIC'),
(30, 'vs20fparty2', 'Fruit Party 2', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20fparty2.png', 1, 'PRAGMATIC'),
(31, 'vswaysdogs', 'The Dog House Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysdogs.png', 1, 'PRAGMATIC'),
(32, 'vs50juicyfr', 'Juicy Fruits', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50juicyfr.png', 1, 'PRAGMATIC'),
(33, 'vs25pandatemple', 'Panda Fortune 2', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25pandatemple.png', 1, 'PRAGMATIC'),
(34, 'vswaysbufking', 'Buffalo King Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysbufking.png', 1, 'PRAGMATIC'),
(35, 'vs40wildwest', 'Wild West Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40wildwest.png', 1, 'PRAGMATIC'),
(36, 'vs20chickdrop', 'Chicken Drop', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20chickdrop.png', 1, 'PRAGMATIC'),
(37, 'vs40spartaking', 'Spartan King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40spartaking.png', 1, 'PRAGMATIC'),
(38, 'vswaysrhino', 'Great Rhino Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysrhino.png', 1, 'PRAGMATIC'),
(39, 'vs20sbxmas', 'Sweet Bonanza Xmas', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20sbxmas.png', 1, 'PRAGMATIC'),
(40, 'vs10fruity2', 'Extra Juicy', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10fruity2.png', 1, 'PRAGMATIC'),
(41, 'vs10egypt', 'Ancient Egypt', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10egypt.png', 1, 'PRAGMATIC'),
(42, 'vs5drhs', 'Dragon Hot Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5drhs.png', 1, 'PRAGMATIC'),
(43, 'vs12bbb', 'Bigger Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs12bbb.png', 1, 'PRAGMATIC'),
(44, 'vs20tweethouse', 'The Tweety House', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20tweethouse.png', 1, 'PRAGMATIC'),
(45, 'vswayslions', '5 Lions Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayslions.png', 1, 'PRAGMATIC'),
(46, 'vswayssamurai', 'Rise of Samurai Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayssamurai.png', 1, 'PRAGMATIC'),
(47, 'vs50pixie', 'Pixie Wings', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50pixie.png', 1, 'PRAGMATIC'),
(48, 'vs20fruitsw', 'Sweet Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20fruitsw.png', 1, 'PRAGMATIC'),
(49, 'vs20rhinoluxe', 'Great Rhino Deluxe', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rhinoluxe.png', 1, 'PRAGMATIC'),
(50, 'vs432congocash', 'Congo Cash', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs432congocash.png', 1, 'PRAGMATIC'),
(51, 'vswaysmadame', 'Madame Destiny Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysmadame.png', 1, 'PRAGMATIC'),
(52, 'vs1024temuj', 'Temujin Treasures', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024temuj.png', 1, 'PRAGMATIC'),
(53, 'vs40pirgold', 'Pirate Gold Deluxe', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40pirgold.png', 1, 'PRAGMATIC'),
(54, 'vs25mmouse', 'Money Mouse', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25mmouse.png', 1, 'PRAGMATIC'),
(55, 'vs10threestar', 'Three Star Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10threestar.png', 1, 'PRAGMATIC'),
(56, 'vs1ball', 'Lucky Dragon Ball', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1ball.png', 1, 'PRAGMATIC'),
(57, 'vs243lionsgold', '5 Lions', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243lionsgold.png', 1, 'PRAGMATIC'),
(58, 'vs10egyptcls', 'Ancient Egypt Classic', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10egyptcls.png', 1, 'PRAGMATIC'),
(59, 'vs25davinci', 'Da Vinci Treasure', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25davinci.png', 1, 'PRAGMATIC'),
(60, 'vs7776secrets', 'Aztec Treasure', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7776secrets.png', 1, 'PRAGMATIC'),
(61, 'vs25wolfgold', 'Wolf Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25wolfgold.png', 1, 'PRAGMATIC'),
(62, 'vs50safariking', 'Safari King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50safariking.png', 1, 'PRAGMATIC'),
(63, 'vs25peking', 'Peking Luck', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25peking.png', 1, 'PRAGMATIC'),
(64, 'vs25asgard', 'Asgard', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25asgard.png', 1, 'PRAGMATIC'),
(65, 'vs25vegas', 'Vegas Nights', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25vegas.png', 1, 'PRAGMATIC'),
(66, 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25scarabqueen.png', 1, 'PRAGMATIC'),
(67, 'vs20starlight', 'Starlight Princess', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20starlight.png', 1, 'PRAGMATIC'),
(68, 'vs10bookoftut', 'John Hunter and the Book of Tut', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bookoftut.png', 1, 'PRAGMATIC'),
(69, 'vs9piggybank', 'Piggy Bank Bills', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9piggybank.png', 1, 'PRAGMATIC'),
(70, 'vs5drmystery', 'Dragon Kingdom Mystery', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5drmystery.png', 1, 'PRAGMATIC'),
(71, 'vs20eightdragons', 'Eight Dragons', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20eightdragons.png', 1, 'PRAGMATIC'),
(72, 'vs1024lionsd', '5 Lions Dance', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024lionsd.png', 1, 'PRAGMATIC'),
(73, 'vs25rio', 'Heart of Rio', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25rio.png', 1, 'PRAGMATIC'),
(74, 'vs10nudgeit', 'Rise of Giza PowerNudge', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10nudgeit.png', 1, 'PRAGMATIC'),
(75, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bxmasbnza.png', 1, 'PRAGMATIC'),
(76, 'vs20santawonder', 'Santa\'s Wonderland', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20santawonder.png', 1, 'PRAGMATIC'),
(77, 'vs20terrorv', 'Cash Elevator', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20terrorv.png', 1, 'PRAGMATIC'),
(78, 'vs10bblpop', 'Bubble Pop', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bblpop.png', 1, 'PRAGMATIC'),
(79, 'vs25btygold', 'Bounty Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25btygold.png', 1, 'PRAGMATIC'),
(80, 'vs88hockattack', 'Hockey Attack™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs88hockattack.png', 1, 'PRAGMATIC'),
(81, 'vswaysbbb', 'Big Bass Bonanza Megaways™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysbbb.png', 1, 'PRAGMATIC'),
(82, 'vs10bookfallen', 'Book of the Fallen', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bookfallen.png', 1, 'PRAGMATIC'),
(83, 'vs40bigjuan', 'Big Juan', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40bigjuan.png', 1, 'PRAGMATIC'),
(84, 'vs20bermuda', 'John Hunter and the Quest for Bermuda Riches', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20bermuda.png', 1, 'PRAGMATIC'),
(85, 'vs10starpirate', 'Star Pirates Code', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10starpirate.png', 1, 'PRAGMATIC'),
(86, 'vswayswest', 'Mystic Chief', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayswest.png', 1, 'PRAGMATIC'),
(87, 'vs20daydead', 'Day of Dead', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20daydead.png', 1, 'PRAGMATIC'),
(88, 'vs20candvil', 'Candy Village', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20candvil.png', 1, 'PRAGMATIC'),
(89, 'vs20wildboost', 'Wild Booster', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20wildboost.png', 1, 'PRAGMATIC'),
(90, 'vswayshammthor', 'Power of Thor Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayshammthor.png', 1, 'PRAGMATIC'),
(91, 'vs243lions', '5 Lions', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243lions.png', 1, 'PRAGMATIC'),
(92, 'vs5super7', 'Super 7s', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5super7.png', 1, 'PRAGMATIC'),
(93, 'vs1masterjoker', 'Master Joker', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1masterjoker.png', 1, 'PRAGMATIC'),
(94, 'vs20kraken', 'Release the Kraken', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20kraken.png', 1, 'PRAGMATIC'),
(95, 'vs10firestrike', 'Fire Strike', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10firestrike.png', 1, 'PRAGMATIC'),
(96, 'vs243fortune', 'Caishen\'s Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243fortune.png', 1, 'PRAGMATIC'),
(97, 'vs4096mystery', 'Mysterious', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs4096mystery.png', 1, 'PRAGMATIC'),
(98, 'vs20aladdinsorc', 'Aladdin and the Sorcerrer', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20aladdinsorc.png', 1, 'PRAGMATIC'),
(99, 'vs243fortseren', 'Greek Gods', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243fortseren.png', 1, 'PRAGMATIC'),
(100, 'vs25chilli', 'Chilli Heat', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25chilli.png', 1, 'PRAGMATIC'),
(101, 'vs8magicjourn', 'Magic Journey', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs8magicjourn.png', 1, 'PRAGMATIC'),
(102, 'vs25pantherqueen', 'Panther Queen', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25pantherqueen.png', 1, 'PRAGMATIC'),
(103, 'vs20leprexmas', 'Leprechaun Carol', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20leprexmas.png', 1, 'PRAGMATIC'),
(104, 'vs7pigs', '7 Piggies', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7pigs.png', 1, 'PRAGMATIC'),
(105, 'vs243caishien', 'Caishen\'s Cash', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243caishien.png', 1, 'PRAGMATIC'),
(106, 'vs5joker', 'Joker\'s Jewels', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5joker.png', 1, 'PRAGMATIC'),
(107, 'vs25gladiator', 'Wild Gladiator', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25gladiator.png', 1, 'PRAGMATIC'),
(108, 'vs25goldpig', 'Golden Pig', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25goldpig.png', 1, 'PRAGMATIC'),
(109, 'vs25goldrush', 'Gold Rush', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25goldrush.png', 1, 'PRAGMATIC'),
(110, 'vs25dragonkingdom', 'Dragon Kingdom', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25dragonkingdom.png', 1, 'PRAGMATIC'),
(111, 'vs25kingdoms', '3 Kingdoms - Battle of Red Cliffs', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25kingdoms.png', 1, 'PRAGMATIC'),
(112, 'vs1dragon8', '888 Dragons', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1dragon8.png', 1, 'PRAGMATIC'),
(113, 'vs5aztecgems', 'Aztec Gems', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5aztecgems.png', 1, 'PRAGMATIC'),
(114, 'vs20hercpeg', 'Hercules and Pegasus', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20hercpeg.png', 1, 'PRAGMATIC'),
(115, 'vs7fire88', 'Fire 88', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7fire88.png', 1, 'PRAGMATIC'),
(116, 'vs20honey', 'Honey Honey Honey', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20honey.png', 1, 'PRAGMATIC'),
(117, 'vs25safari', 'Hot Safari', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25safari.png', 1, 'PRAGMATIC'),
(118, 'vs25journey', 'Journey to the West', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25journey.png', 1, 'PRAGMATIC'),
(119, 'vs20chicken', 'The Great Chicken Escape', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20chicken.png', 1, 'PRAGMATIC'),
(120, 'vs1fortunetree', 'Tree of Riches', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1fortunetree.png', 1, 'PRAGMATIC'),
(121, 'vs20wildpix', 'Wild Pixies', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20wildpix.png', 1, 'PRAGMATIC'),
(122, 'vs15fairytale', 'Fairytale Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs15fairytale.png', 1, 'PRAGMATIC'),
(123, 'vs20santa', 'Santa', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20santa.png', 1, 'PRAGMATIC'),
(124, 'vs10vampwolf', 'Vampires vs Wolves', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10vampwolf.png', 1, 'PRAGMATIC'),
(125, 'vs50aladdin', '3 Genie Wishes', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50aladdin.png', 1, 'PRAGMATIC'),
(126, 'vs50hercules', 'Hercules Son of Zeus', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50hercules.png', 1, 'PRAGMATIC'),
(127, 'vs7776aztec', 'Aztec Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7776aztec.png', 1, 'PRAGMATIC'),
(128, 'vs5trdragons', 'Triple Dragons', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5trdragons.png', 1, 'PRAGMATIC'),
(129, 'vs40madwheel', 'The Wild Machine', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40madwheel.png', 1, 'PRAGMATIC'),
(130, 'vs25newyear', 'Lucky New Year', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25newyear.png', 1, 'PRAGMATIC'),
(131, 'vs40frrainbow', 'Fruit Rainbow', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40frrainbow.png', 1, 'PRAGMATIC'),
(132, 'vs50kingkong', 'Mighty Kong', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50kingkong.png', 1, 'PRAGMATIC'),
(133, 'vs20godiva', 'Lady Godiva', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20godiva.png', 1, 'PRAGMATIC'),
(134, 'vs9madmonkey', 'Monkey Madness', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9madmonkey.png', 1, 'PRAGMATIC'),
(135, 'vs1tigers', 'Triple Tigers', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1tigers.png', 1, 'PRAGMATIC'),
(136, 'vs9chen', 'Master Chen\'s Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9chen.png', 1, 'PRAGMATIC'),
(137, 'vs5hotburn', 'Hot to burn', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5hotburn.png', 1, 'PRAGMATIC'),
(138, 'vs25dwarves_new', 'Dwarven Gold Deluxe', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25dwarves_new.png', 1, 'PRAGMATIC'),
(139, 'vs1024butterfly', 'Jade Butterfly', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024butterfly.png', 1, 'PRAGMATIC'),
(140, 'vs25sea', 'Great Reef', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25sea.png', 1, 'PRAGMATIC'),
(141, 'vs20leprechaun', 'Leprechaun Song', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20leprechaun.png', 1, 'PRAGMATIC'),
(142, 'vs7monkeys', '7 Monkeys', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7monkeys.png', 1, 'PRAGMATIC'),
(143, 'vs50chinesecharms', 'Lucky Dragons', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50chinesecharms.png', 1, 'PRAGMATIC'),
(144, 'vs18mashang', 'Treasure Horse', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs18mashang.png', 1, 'PRAGMATIC'),
(145, 'vs5spjoker', 'Super Joker', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5spjoker.png', 1, 'PRAGMATIC'),
(146, 'vs20egypttrs', 'Egyptian Fortunes', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20egypttrs.png', 1, 'PRAGMATIC'),
(147, 'vs9hotroll', 'Hot Chilli', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9hotroll.png', 1, 'PRAGMATIC'),
(148, 'vs4096jurassic', 'Jurassic Giants', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs4096jurassic.png', 1, 'PRAGMATIC'),
(149, 'vs3train', 'Gold Train', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs3train.png', 1, 'PRAGMATIC'),
(150, 'vs1024atlantis', 'Queen of Atlantis', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024atlantis.png', 1, 'PRAGMATIC'),
(151, 'vs20bl', 'Busy Bees', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20bl.png', 1, 'PRAGMATIC'),
(152, 'vs25champ', 'The Champions', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25champ.png', 1, 'PRAGMATIC'),
(153, 'vs5trjokers', 'Triple Jokers', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5trjokers.png', 1, 'PRAGMATIC'),
(154, 'vs1money', 'Money Money Money', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1money.png', 1, 'PRAGMATIC'),
(155, 'vs1600drago', 'Drago - Jewels of Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1600drago.png', 1, 'PRAGMATIC'),
(156, 'vs40streetracer', 'Street Racer', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40streetracer.png', 1, 'PRAGMATIC'),
(157, 'vs9aztecgemsdx', 'Aztec Gems Deluxe', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9aztecgemsdx.png', 1, 'PRAGMATIC'),
(158, 'vs20gorilla', 'Jungle Gorilla', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20gorilla.png', 1, 'PRAGMATIC'),
(159, 'vswayswerewolf', 'Curse of the Werewolf Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayswerewolf.png', 1, 'PRAGMATIC'),
(160, 'vswayshive', 'Star Bounty', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayshive.png', 1, 'PRAGMATIC'),
(161, 'vs25samurai', 'Rise of Samurai', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25samurai.png', 1, 'PRAGMATIC'),
(162, 'vs25walker', 'Wild Walker', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25walker.png', 1, 'PRAGMATIC'),
(163, 'vs20goldfever', 'Gems Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20goldfever.png', 1, 'PRAGMATIC'),
(164, 'vs25bkofkngdm', 'Book of Kingdoms', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25bkofkngdm.png', 1, 'PRAGMATIC'),
(165, 'vs10goldfish', 'Fishin Reels', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10goldfish.png', 1, 'PRAGMATIC'),
(166, 'vs1024dtiger', 'The Dragon Tiger', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024dtiger.png', 1, 'PRAGMATIC'),
(167, 'vs20xmascarol', 'Christmas Carol Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20xmascarol.png', 1, 'PRAGMATIC'),
(168, 'vs10mayangods', 'John Hunter and the Mayan Gods', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10mayangods.png', 1, 'PRAGMATIC'),
(169, 'vs20bonzgold', 'Bonanza Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20bonzgold.png', 1, 'PRAGMATIC'),
(170, 'vs40voodoo', 'Voodoo Magic', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40voodoo.png', 1, 'PRAGMATIC'),
(171, 'vs25gldox', 'Golden Ox', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25gldox.png', 1, 'PRAGMATIC'),
(172, 'vs10wildtut', 'Mysterious Egypt', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10wildtut.png', 1, 'PRAGMATIC'),
(173, 'vs20ekingrr', 'Emerald King Rainbow Road', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20ekingrr.png', 1, 'PRAGMATIC'),
(174, 'vs10eyestorm', 'Eye of the Storm', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10eyestorm.png', 1, 'PRAGMATIC'),
(175, 'vs117649starz', 'Starz Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs117649starz.png', 1, 'PRAGMATIC'),
(176, 'vs10amm', 'The Amazing Money Machine', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10amm.png', 1, 'PRAGMATIC'),
(177, 'vs20magicpot', 'The Magic Cauldron - Enchanted Brew', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20magicpot.png', 1, 'PRAGMATIC'),
(178, 'vswaysyumyum', 'Yum Yum Powerways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysyumyum.png', 1, 'PRAGMATIC'),
(179, 'vswayselements', 'Elemental Gems Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayselements.png', 1, 'PRAGMATIC'),
(180, 'vswayschilheat', 'Chilli Heat Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayschilheat.png', 1, 'PRAGMATIC'),
(181, 'vs10luckcharm', 'Lucky Grace And Charm', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10luckcharm.png', 1, 'PRAGMATIC'),
(182, 'vswaysaztecking', 'Aztec King Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysaztecking.png', 1, 'PRAGMATIC'),
(183, 'vs20phoenixf', 'Phoenix Forge', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20phoenixf.png', 1, 'PRAGMATIC'),
(184, 'vs576hokkwolf', 'Hokkaido Wolf', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs576hokkwolf.png', 1, 'PRAGMATIC'),
(185, 'vs20trsbox', 'Treasure Wild', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20trsbox.png', 1, 'PRAGMATIC'),
(186, 'vs243chargebull', 'Raging Bull', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243chargebull.png', 1, 'PRAGMATIC'),
(187, 'vswaysbankbonz', 'Cash Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysbankbonz.png', 1, 'PRAGMATIC'),
(188, 'vs20pbonanza', 'Pyramid Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20pbonanza.png', 1, 'PRAGMATIC'),
(189, 'vs243empcaishen', 'Emperor Caishen', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243empcaishen.png', 1, 'PRAGMATIC'),
(190, 'vs25tigeryear', 'New Year Tiger Treasures ™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25tigeryear.png', 1, 'PRAGMATIC'),
(191, 'vs20amuleteg', 'Fortune of Giza™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20amuleteg.png', 1, 'PRAGMATIC'),
(192, 'vs10runes', 'Gates of Valhalla™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10runes.png', 1, 'PRAGMATIC'),
(193, 'vs25goldparty', 'Gold Party®', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25goldparty.png', 1, 'PRAGMATIC'),
(194, 'vswaysxjuicy', 'Extra Juicy Megaways™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysxjuicy.png', 1, 'PRAGMATIC'),
(195, 'vs40wanderw', 'Wild Depths™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40wanderw.png', 1, 'PRAGMATIC'),
(196, 'vs4096magician', 'Magician\'s Secrets™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs4096magician.png', 1, 'PRAGMATIC'),
(197, 'vs20smugcove', 'Smugglers Cove™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20smugcove.png', 1, 'PRAGMATIC'),
(198, 'vswayscryscav', 'Crystal Caverns Megaways™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayscryscav.png', 1, 'PRAGMATIC'),
(199, 'vs20superx', 'Super X™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20superx.png', 1, 'PRAGMATIC'),
(200, 'vs20rockvegas', 'Rock Vegas Mega Hold & Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rockvegas.png', 1, 'PRAGMATIC'),
(201, 'vs25copsrobbers', 'Cash Patrol', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25copsrobbers.png', 1, 'PRAGMATIC'),
(202, 'vs20colcashzone', 'Colossal Cash Zone', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20colcashzone.png', 1, 'PRAGMATIC'),
(203, 'vs20ultim5', 'The Ultimate 5', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20ultim5.png', 1, 'PRAGMATIC'),
(204, 'vs20bchprty', 'Wild Beach Party', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20bchprty.png', 1, 'PRAGMATIC'),
(205, 'vs10bookazteck', 'Book of Aztec King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bookazteck.png', 1, 'PRAGMATIC'),
(206, 'vs50mightra', 'Might of Ra', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50mightra.png', 1, 'PRAGMATIC'),
(207, 'vs25bullfiesta', 'Bull Fiesta', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25bullfiesta.png', 1, 'PRAGMATIC'),
(208, 'vs20rainbowg', 'Rainbow Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rainbowg.png', 1, 'PRAGMATIC'),
(209, 'vs10tictac', 'Tic Tac Take', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10tictac.png', 1, 'PRAGMATIC'),
(210, 'vs243discolady', 'Disco Lady', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243discolady.png', 1, 'PRAGMATIC'),
(211, 'vs243queenie', 'Queenie', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243queenie.png', 1, 'PRAGMATIC'),
(212, 'vs20farmfest', 'Barn Festival', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20farmfest.png', 1, 'PRAGMATIC'),
(213, 'vs10chkchase', 'Chicken Chase', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10chkchase.png', 1, 'PRAGMATIC'),
(214, 'vswayswildwest', 'Wild West Gold Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayswildwest.png', 1, 'PRAGMATIC'),
(215, 'vs20mustanggld2', 'Clover Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20mustanggld2.png', 1, 'PRAGMATIC'),
(216, 'vs20drtgold', 'Drill That Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20drtgold.png', 1, 'PRAGMATIC'),
(217, 'vs10spiritadv', 'Spirit of Adventure', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10spiritadv.png', 1, 'PRAGMATIC'),
(218, 'vs10firestrike2', 'Fire Strike 2', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10firestrike2.png', 1, 'PRAGMATIC'),
(219, 'vs40cleoeye', 'Eye of Cleopatra', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40cleoeye.png', 1, 'PRAGMATIC'),
(220, 'vs20gobnudge', 'Goblin Heist Powernudge', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20gobnudge.png', 1, 'PRAGMATIC'),
(221, 'vswayszombcarn', 'Zombie Carnival', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayszombcarn.png', 1, 'PRAGMATIC'),
(222, 'vs50northgard', 'North Guardians', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50northgard.png', 1, 'PRAGMATIC'),
(223, 'vs20sugarrush', 'Sugar Rush', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20sugarrush.png', 1, 'PRAGMATIC'),
(224, 'vs20cleocatra', 'Cleocatra', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20cleocatra.png', 1, 'PRAGMATIC'),
(225, 'vs5littlegem', '?? ? ?? ? ??', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5littlegem.png', 1, 'PRAGMATIC'),
(226, 'vs10egrich', '? ?? ??', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10egrich.png', 1, 'PRAGMATIC'),
(227, 'vs40cosmiccash', 'Cosmic Cash', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs40cosmiccash.png', 1, 'PRAGMATIC'),
(228, 'vs25bomb', 'Bomb Bonanza', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs25bomb.png', 1, 'PRAGMATIC'),
(229, 'vs100sh', 'Shining Hot 100', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs100sh.png', 1, 'PRAGMATIC'),
(230, 'vs40sh', 'Shining Hot 40', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs40sh.png', 1, 'PRAGMATIC'),
(231, 'vs5sh', 'Shining Hot 5', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs5sh.png', 1, 'PRAGMATIC'),
(232, 'vswaysjkrdrop', 'Tropical Tiki', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswaysjkrdrop.png', 1, 'PRAGMATIC'),
(233, 'vs40hotburnx', 'Hot To Burn Extreme', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs40hotburnx.png', 1, 'PRAGMATIC'),
(234, 'vs1024gmayhem', 'Gorilla Mayhem', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs1024gmayhem.png', 1, 'PRAGMATIC'),
(235, 'vs20octobeer', 'Octobeer Fortunes', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20octobeer.png', 1, 'PRAGMATIC'),
(236, 'vs10txbigbass', 'Big Bass Splash', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs10txbigbass.png', 1, 'PRAGMATIC'),
(237, 'vs100firehot', 'Fire Hot 100', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs100firehot.png', 1, 'PRAGMATIC'),
(238, 'vs20fh', 'Fire Hot 20', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20fh.png', 1, 'PRAGMATIC'),
(239, 'vs40firehot', 'Fire Hot 40', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs40firehot.png', 1, 'PRAGMATIC'),
(240, 'vs5firehot', 'Fire Hot 5', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs5firehot.png', 1, 'PRAGMATIC'),
(241, 'vs20wolfie', 'Greedy Wolf', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20wolfie.png', 1, 'PRAGMATIC'),
(242, 'vs20underground', 'Down the Rails', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20underground.png', 1, 'PRAGMATIC'),
(243, 'vs10mmm', 'Magic Money Maze', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs10mmm.png', 1, 'PRAGMATIC'),
(244, 'vswaysfltdrg', 'Floating Dragon Hold & Spin Megaways', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswaysfltdrg.png', 1, 'PRAGMATIC'),
(245, 'vs20trswild2', 'Black Bull', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20trswild2.png', 1, 'PRAGMATIC'),
(246, 'vswaysstrwild', 'Candy Stars', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswaysstrwild.png', 1, 'PRAGMATIC'),
(247, 'vs10crownfire', 'Crown of Fire', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs10crownfire.png', 1, 'PRAGMATIC'),
(248, 'vs20muertos', 'Muertos Multiplier Megaways', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20muertos.png', 1, 'PRAGMATIC'),
(249, 'vswayslofhero', 'Legend of Heroes', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswayslofhero.png', 1, 'PRAGMATIC'),
(250, 'vs5strh', 'Striking Hot 5', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs5strh.png', 1, 'PRAGMATIC'),
(251, 'vs10snakeeyes', 'Snakes & Ladders - Snake Eyes', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs10snakeeyes.png', 1, 'PRAGMATIC'),
(252, 'vswaysbook', 'Book of Golden Sands', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswaysbook.png', 1, 'PRAGMATIC'),
(253, 'vswaysfrywld', 'Spin & Score Megaways', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14187.png', 1, 'PRAGMATIC'),
(254, 'vs10tut', 'Book of Tut Respin', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14185.png', 1, 'PRAGMATIC'),
(255, 'vs20porbs', 'Santa\'s Great Gifts', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14186.png', 1, 'PRAGMATIC'),
(256, 'vs20asgard', 'Kingdom of Asgard™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14193.jpg', 1, 'PRAGMATIC'),
(257, 'vswaysconcoll', 'Sweet PowerNudge™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14240.jpg', 1, 'PRAGMATIC'),
(258, 'vs20schristmas', 'Starlight Chrismas', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14241.jpg', 1, 'PRAGMATIC'),
(259, 'vs20theights', 'Towering Fortunes™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14242.jpg', 1, 'PRAGMATIC'),
(260, 'vs20gatotgates', 'Gates of Gatotkaca™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14256.jpg', 1, 'PRAGMATIC'),
(261, 'vs20lcount', 'Gems of Serengeti™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14257.jpg', 1, 'PRAGMATIC'),
(262, 'vs20mtreasure', 'Pirate Golden Age™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14258.jpg', 1, 'PRAGMATIC'),
(263, 'vs10bbkir', 'Big Bass Bonanza Keeping it Reel', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14275.jpg', 1, 'PRAGMATIC'),
(264, 'vswaysluckyfish', 'Lucky Fishing Megaways™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14276.jpg', 1, 'PRAGMATIC'),
(265, 'vs25rlbank', 'Reel Banks™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14325.jpg', 1, 'PRAGMATIC'),
(266, 'vs20aztecgates', 'Gates of Aztec™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14326.png', 1, 'PRAGMATIC'),
(267, 'vs20dugems', 'Hot Pepper™\r\n', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14327.jpg', 1, 'PRAGMATIC'),
(268, 'vs20clspwrndg', 'Sweet PowerNudge', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14328.jpg', 1, 'PRAGMATIC'),
(269, 'SGReturnToTheFeature', 'Return to the Future', 'https://app-b.insvr.com/img/s/300/SGReturnToTheFeature_ko-KR.png', 1, 'HABANERO'),
(270, 'SGTabernaDeLosMuerto', 'Tevena de los Muirtos Ultra', 'https://app-b.insvr.com/img/s/300/SGTabernaDeLosMuertosUltra_ko-KR.png', 1, 'HABANERO'),
(271, 'SGTotemTowers', 'Totem towers', 'https://app-b.insvr.com/img/s/300/SGTotemTowers_ko-KR.png', 1, 'HABANERO'),
(272, 'SGChristmasGiftRush', 'Christmas Kipoot Rush', 'https://app-b.insvr.com/img/s/300/SGChristmasGiftRush_ko-KR.png', 1, 'HABANERO'),
(273, 'SGOrbsOfAtlantis', 'Overs of Atlantis', 'https://app-b.insvr.com/img/s/300/SGOrbsOfAtlantis_ko-KR.png', 1, 'HABANERO'),
(274, 'SGBeforeTimeRunsOut', 'Before Time Runner Out', 'https://app-b.insvr.com/img/s/300/SGBeforeTimeRunsOut_ko-KR.png', 1, 'HABANERO'),
(275, 'SGTechnoTumble', 'Techno tumble', 'https://app-b.insvr.com/img/s/300/SGTechnoTumble_ko-KR.png', 1, 'HABANERO'),
(276, 'SGWealthInn', 'Wells Inn', 'https://app-b.insvr.com/img/s/300/SGWealthInn_ko-KR.png', 1, 'HABANERO'),
(277, 'SGHappyApe', 'Happy ape', 'https://app-b.insvr.com/img/s/300/SGHappyApe_ko-KR.png', 1, 'HABANERO'),
(278, 'SGTabernaDeLosMuerto', 'Tevena di los Muertos', 'https://app-b.insvr.com/img/s/300/SGTabernaDeLosMuertos_ko-KR.png', 1, 'HABANERO'),
(279, 'SGNaughtySanta', 'Notty Santa', 'https://app-b.insvr.com/img/s/300/SGNaughtySanta_ko-KR.png', 1, 'HABANERO'),
(280, 'SGFaCaiShenDeluxe', 'Pakai Sen Deluxe', 'https://app-b.insvr.com/img/s/300/SGFaCaiShenDeluxe_ko-KR.png', 1, 'HABANERO'),
(281, 'SGHeySushi', 'Hey sushi', 'https://app-b.insvr.com/img/s/300/SGHeySushi_ko-KR.png', 1, 'HABANERO'),
(282, 'SGKnockoutFootballRu', 'Knockout football rush', 'https://app-b.insvr.com/img/s/300/SGKnockoutFootballRush_ko-KR.png', 1, 'HABANERO'),
(283, 'SGColossalGems', 'Closal Gems', 'https://app-b.insvr.com/img/s/300/SGColossalGems_ko-KR.png', 1, 'HABANERO'),
(284, 'SGHotHotHalloween', 'hot hot halloween', 'https://app-b.insvr.com/img/s/300/SGHotHotHalloween_ko-KR.png', 1, 'HABANERO'),
(285, 'SGLuckyFortuneCat', 'Lucky fortune cat', 'https://app-b.insvr.com/img/s/300/SGLuckyFortuneCat_ko-KR.png', 1, 'HABANERO'),
(286, 'SGHotHotFruit', 'hot hot fruit', 'https://app-b.insvr.com/img/s/300/SGHotHotFruit_ko-KR.png', 1, 'HABANERO'),
(287, 'SGMountMazuma', 'Mount Majuma', 'https://app-b.insvr.com/img/s/300/SGMountMazuma_ko-KR.png', 1, 'HABANERO'),
(288, 'SGWildTrucks', 'Wild Trucks', 'https://app-b.insvr.com/img/s/300/SGWildTrucks_ko-KR.png', 1, 'HABANERO'),
(289, 'SGLuckyLucky', 'Lucky Lucky', 'https://app-b.insvr.com/img/s/300/SGLuckyLucky_ko-KR.png', 1, 'HABANERO'),
(290, 'SGKnockoutFootball', 'Knockout football', 'https://app-b.insvr.com/img/s/300/SGKnockoutFootball_ko-KR.png', 1, 'HABANERO'),
(291, 'SGJump', 'Jump!', 'https://app-b.insvr.com/img/s/300/SGJump_ko-KR.png', 1, 'HABANERO'),
(292, 'SGPumpkinPatch', 'Pumpkin patch', 'https://app-b.insvr.com/img/s/300/SGPumpkinPatch_ko-KR.png', 1, 'HABANERO'),
(293, 'SGWaysOfFortune', 'Way of Fortune', 'https://app-b.insvr.com/img/s/300/SGWaysOfFortune_ko-KR.png', 1, 'HABANERO'),
(294, 'SGFourDivineBeasts', 'For Devine Beasts', 'https://app-b.insvr.com/img/s/300/SGFourDivineBeasts_ko-KR.png', 1, 'HABANERO'),
(295, 'SGPandaPanda', 'Panda panda', 'https://app-b.insvr.com/img/s/300/SGPandaPanda_ko-KR.png', 1, 'HABANERO'),
(296, 'SGOceansCall', 'Ocean\'s Call', 'https://app-b.insvr.com/img/s/300/SGOceansCall_ko-KR.png', 1, 'HABANERO'),
(297, 'SGScruffyScallywags', 'Scruffy Skellywex', 'https://app-b.insvr.com/img/s/300/SGScruffyScallywags_ko-KR.png', 1, 'HABANERO'),
(298, 'SGNuwa', 'Nuwa', 'https://app-b.insvr.com/img/s/300/SGNuwa_ko-KR.png', 1, 'HABANERO'),
(299, 'SGTheKoiGate', 'Koi gate', 'https://app-b.insvr.com/img/s/300/SGTheKoiGate_ko-KR.png', 1, 'HABANERO'),
(300, 'SGFaCaiShen', 'Pacaishen', 'https://app-b.insvr.com/img/s/300/SGFaCaiShen_ko-KR.png', 1, 'HABANERO'),
(301, 'SG12Zodiacs', '12 zodiacs', 'https://app-b.insvr.com/img/s/300/SG12Zodiacs_ko-KR.png', 1, 'HABANERO'),
(302, 'SGFireRooster', 'Fire rooster', 'https://app-b.insvr.com/img/s/300/SGFireRooster_ko-KR.png', 1, 'HABANERO'),
(303, 'SGFenghuang', 'Phoenix', 'https://app-b.insvr.com/img/s/300/SGFenghuang_ko-KR.png', 1, 'HABANERO'),
(304, 'SGBirdOfThunder', 'Bird of Thunder', 'https://app-b.insvr.com/img/s/300/SGBirdOfThunder_ko-KR.png', 1, 'HABANERO'),
(305, 'SGTheDeadEscape', 'The Dead Escape', 'https://app-b.insvr.com/img/s/300/SGTheDeadEscape_ko-KR.png', 1, 'HABANERO'),
(306, 'SGBombsAway', 'Bombs Away', 'https://app-b.insvr.com/img/s/300/SGBombsAway_ko-KR.png', 1, 'HABANERO'),
(307, 'SGGoldRush', 'Gold rush', 'https://app-b.insvr.com/img/s/300/SGGoldRush_ko-KR.png', 1, 'HABANERO'),
(308, 'SGRuffledUp', 'Ruffled up', 'https://app-b.insvr.com/img/s/300/SGRuffledUp_ko-KR.png', 1, 'HABANERO'),
(309, 'SGRomanEmpire', 'Roman empire', 'https://app-b.insvr.com/img/s/300/SGRomanEmpire_ko-KR.png', 1, 'HABANERO'),
(310, 'SGCoyoteCrash', 'Coyote crash', 'https://app-b.insvr.com/img/s/300/SGCoyoteCrash_ko-KR.png', 1, 'HABANERO'),
(311, 'SGWickedWitch', 'Wickt Location', 'https://app-b.insvr.com/img/s/300/SGWickedWitch_ko-KR.png', 1, 'HABANERO'),
(312, 'SGDragonsThrone', 'Dragon\'s Throne', 'https://app-b.insvr.com/img/s/300/SGDragonsThrone_ko-KR.png', 1, 'HABANERO'),
(313, 'SGBuggyBonus', 'Buggy bonus', 'https://app-b.insvr.com/img/s/300/SGBuggyBonus_ko-KR.png', 1, 'HABANERO'),
(314, 'SGGlamRock', 'Glam rock', 'https://app-b.insvr.com/img/s/300/SGGlamRock_ko-KR.png', 1, 'HABANERO'),
(315, 'SGSuperTwister', 'Super twister', 'https://app-b.insvr.com/img/s/300/SGSuperTwister_ko-KR.png', 1, 'HABANERO'),
(316, 'SGKanesInferno', 'Keynes Inferno', 'https://app-b.insvr.com/img/s/300/SGKanesInferno_ko-KR.png', 1, 'HABANERO'),
(317, 'SGTreasureTomb', 'Treasure Tomb', 'https://app-b.insvr.com/img/s/300/SGTreasureTomb_ko-KR.png', 1, 'HABANERO'),
(318, 'SGJugglenaut', 'Jugglenut', 'https://app-b.insvr.com/img/s/300/SGJugglenaut_ko-KR.png', 1, 'HABANERO'),
(319, 'SGGalacticCash', 'Glactic Cash', 'https://app-b.insvr.com/img/s/300/SGGalacticCash_ko-KR.png', 1, 'HABANERO'),
(320, 'SGZeus2', 'Zeus 2', 'https://app-b.insvr.com/img/s/300/SGZeus2_ko-KR.png', 1, 'HABANERO'),
(321, 'SGTheDragonCastle', 'Dragon castle', 'https://app-b.insvr.com/img/s/300/SGTheDragonCastle_ko-KR.png', 1, 'HABANERO'),
(322, 'SGKingTutsTomb', 'King Teeth Tomb', 'https://app-b.insvr.com/img/s/300/SGKingTutsTomb_ko-KR.png', 1, 'HABANERO'),
(323, 'SGCarnivalCash', 'Carnival cash', 'https://app-b.insvr.com/img/s/300/SGCarnivalCash_ko-KR.png', 1, 'HABANERO'),
(324, 'SGTreasureDiver', 'Treasure diver', 'https://app-b.insvr.com/img/s/300/SGTreasureDiver_ko-KR.png', 1, 'HABANERO'),
(325, 'SGLittleGreenMoney', 'Little Green Money', 'https://app-b.insvr.com/img/s/300/SGLittleGreenMoney_ko-KR.png', 1, 'HABANERO'),
(326, 'SGMonsterMashCash', 'Monster Mash Cash', 'https://app-b.insvr.com/img/s/300/SGMonsterMashCash_ko-KR.png', 1, 'HABANERO'),
(327, 'SGShaolinFortunes100', 'Xiaolin Fortune 100', 'https://app-b.insvr.com/img/s/300/SGShaolinFortunes100_ko-KR.png', 1, 'HABANERO'),
(328, 'SGShaolinFortunes243', 'Xiaolin Fortune', 'https://app-b.insvr.com/img/s/300/SGShaolinFortunes243_ko-KR.png', 1, 'HABANERO'),
(329, 'SGWeirdScience', 'Weird Science', 'https://app-b.insvr.com/img/s/300/SGWeirdScience_ko-KR.png', 1, 'HABANERO'),
(330, 'SGBlackbeardsBounty', 'Blackbeards Bounty', 'https://app-b.insvr.com/img/s/300/SGBlackbeardsBounty_ko-KR.png', 1, 'HABANERO'),
(331, 'SGDrFeelgood', 'Dr. Feelgood', 'https://app-b.insvr.com/img/s/300/SGDrFeelgood_ko-KR.png', 1, 'HABANERO'),
(332, 'SGVikingsPlunder', 'Vikings plunder', 'https://app-b.insvr.com/img/s/300/SGVikingsPlunder_ko-KR.png', 1, 'HABANERO'),
(333, 'SGDoubleODollars', 'Double O Dollars', 'https://app-b.insvr.com/img/s/300/SGDoubleODollars_ko-KR.png', 1, 'HABANERO'),
(334, 'SGSpaceFortune', 'Space fortune', 'https://app-b.insvr.com/img/s/300/SGSpaceFortune_ko-KR.png', 1, 'HABANERO'),
(335, 'SGPamperMe', 'Pamper me', 'https://app-b.insvr.com/img/s/300/SGPamperMe_ko-KR.png', 1, 'HABANERO'),
(336, 'SGZeus', 'Zeus', 'https://app-b.insvr.com/img/s/300/SGZeus_ko-KR.png', 1, 'HABANERO'),
(337, 'SGSOS', 'S.O.S.!', 'https://app-b.insvr.com/img/s/300/SGSOS_ko-KR.png', 1, 'HABANERO'),
(338, 'SGPoolShark', 'Full shark', 'https://app-b.insvr.com/img/s/300/SGPoolShark_ko-KR.png', 1, 'HABANERO'),
(339, 'SGEgyptianDreams', 'Egyptian Dreams', 'https://app-b.insvr.com/img/s/300/SGEgyptianDreams_ko-KR.png', 1, 'HABANERO'),
(340, 'SGBarnstormerBucks', 'Barnstormer Bucks', 'https://app-b.insvr.com/img/s/300/SGBarnstormerBucks_ko-KR.png', 1, 'HABANERO'),
(341, 'SGSuperStrike', 'Super strike', 'https://app-b.insvr.com/img/s/300/SGSuperStrike_ko-KR.png', 1, 'HABANERO'),
(342, 'SGJungleRumble', 'Jungle rumble', 'https://app-b.insvr.com/img/s/300/SGJungleRumble_ko-KR.png', 1, 'HABANERO'),
(343, 'SGArcticWonders', 'Arctic Wonders', 'https://app-b.insvr.com/img/s/300/SGArcticWonders_ko-KR.png', 1, 'HABANERO'),
(344, 'SGTowerOfPizza', 'Tower of Pizza', 'https://app-b.insvr.com/img/s/300/SGTowerOfPizza_ko-KR.png', 1, 'HABANERO'),
(345, 'SGMummyMoney', 'Mummy money', 'https://app-b.insvr.com/img/s/300/SGMummyMoney_ko-KR.png', 1, 'HABANERO'),
(346, 'SGBikiniIsland', 'bikini island', 'https://app-b.insvr.com/img/s/300/SGBikiniIsland_ko-KR.png', 1, 'HABANERO'),
(347, 'SGQueenOfQueens1024', 'Queen of Queens II', 'https://app-b.insvr.com/img/s/300/SGQueenOfQueens1024_ko-KR.png', 1, 'HABANERO'),
(348, 'SGDragonsRealm', 'Dragon\'s Realm', 'https://app-b.insvr.com/img/s/300/SGDragonsRealm_ko-KR.png', 1, 'HABANERO'),
(349, 'SGAllForOne', 'All for one', 'https://app-b.insvr.com/img/s/300/SGAllForOne_ko-KR.png', 1, 'HABANERO'),
(350, 'SGFlyingHigh', 'Flying high', 'https://app-b.insvr.com/img/s/300/SGFlyingHigh_ko-KR.png', 1, 'HABANERO'),
(351, 'SGMrBling', 'Mr. Bling', 'https://app-b.insvr.com/img/s/300/SGMrBling_ko-KR.png', 1, 'HABANERO'),
(352, 'SGMysticFortune', 'Mystic Fortune', 'https://app-b.insvr.com/img/s/300/SGMysticFortune_ko-KR.png', 1, 'HABANERO'),
(353, 'SGPuckerUpPrince', 'Funker up prince', 'https://app-b.insvr.com/img/s/300/SGPuckerUpPrince_ko-KR.png', 1, 'HABANERO'),
(354, 'SGSirBlingalot', 'Bring it all', 'https://app-b.insvr.com/img/s/300/SGSirBlingalot_ko-KR.png', 1, 'HABANERO'),
(355, 'SGCashReef', 'Cash leaf', 'https://app-b.insvr.com/img/s/300/SGCashReef_ko-KR.png', 1, 'HABANERO'),
(356, 'SGQueenOfQueens243', 'Queen of queens', 'https://app-b.insvr.com/img/s/300/SGQueenOfQueens243_ko-KR.png', 1, 'HABANERO'),
(357, 'SGRideEmCowboy', 'Lytham Cowboy (Pick Game)', 'https://app-b.insvr.com/img/s/300/SGRideEmCowboy_ko-KR.png', 1, 'HABANERO'),
(358, 'SGGrapeEscape', 'The Graph Escape', 'https://app-b.insvr.com/img/s/300/SGGrapeEscape_ko-KR.png', 1, 'HABANERO'),
(359, 'SGGoldenUnicorn', 'Golden unicorn', 'https://app-b.insvr.com/img/s/300/SGGoldenUnicorn_ko-KR.png', 1, 'HABANERO'),
(360, 'SGFrontierFortunes', 'Frontier Fortune', 'https://app-b.insvr.com/img/s/300/SGFrontierFortunes_ko-KR.png', 1, 'HABANERO'),
(361, 'SGIndianCashCatcher', 'Indian Cash Catcher', 'https://app-b.insvr.com/img/s/300/SGIndianCashCatcher_ko-KR.png', 1, 'HABANERO'),
(362, 'SGSkysTheLimit', 'Sky\'s the Limit', 'https://app-b.insvr.com/img/s/300/SGSkysTheLimit_ko-KR.png', 1, 'HABANERO'),
(363, 'SGTheBigDeal', 'The Big Deal', 'https://app-b.insvr.com/img/s/300/SGTheBigDeal_ko-KR.png', 1, 'HABANERO'),
(364, 'SGCashosaurus', 'Cashosaurus', 'https://app-b.insvr.com/img/s/300/SGCashosaurus_ko-KR.png', 1, 'HABANERO'),
(365, 'SGDiscoFunk', 'Disco funk', 'https://app-b.insvr.com/img/s/300/SGDiscoFunk_ko-KR.png', 1, 'HABANERO'),
(366, 'SGCalaverasExplosiva', 'Calaveras Explociba', 'https://app-b.insvr.com/img/s/300/SGCalaverasExplosivas_ko-KR.png', 1, 'HABANERO'),
(367, 'SGNewYearsBash', 'New Year Bessie', 'https://app-b.insvr.com/img/s/300/SGNewYearsBash_ko-KR.png', 1, 'HABANERO'),
(368, 'SGNineTails', 'Nine Tales', 'https://app-b.insvr.com/img/s/300/SGNineTails_ko-KR.png', 1, 'HABANERO'),
(369, 'SGMysticFortuneDelux', 'Mystic Fortune Deluxe', 'https://app-b.insvr.com/img/s/300/SGMysticFortuneDeluxe_ko-KR.png', 1, 'HABANERO'),
(370, 'SGLuckyDurian', 'Lucky durian', 'https://app-b.insvr.com/img/s/300/SGLuckyDurian_ko-KR.png', 1, 'HABANERO'),
(371, 'SGDiscoBeats', 'Disco beat', 'https://app-b.insvr.com/img/s/300/SGDiscoBeats_ko-KR.png', 1, 'HABANERO'),
(372, 'SGLanternLuck', 'Lantern lucky', 'https://app-b.insvr.com/img/s/300/SGLanternLuck_ko-KR.png', 1, 'HABANERO'),
(373, 'SGBombRunner', 'Boom runner', 'https://app-b.insvr.com/img/s/300/SGBombRunner_ko-KR.png', 1, 'HABANERO'),
(374, 'sun_of_egypt', 'SUN OF EGYPT', 'https://cdn46952.bngsrv.com/games/banner_173_en.jpe?ts=1573550830337', 1, 'BOOONGO'),
(375, 'sun_of_egypt_2', 'SUN OF EGYPT 2', 'https://cdn46952.bngsrv.com/games/banner_202_en.jpg?ts=1602582288012', 1, 'BOOONGO'),
(376, 'happy_fish', 'HAPPY FISH', 'https://cdn46952.bngsrv.com/games/banner_261_en.jpg?ts=1644912611364', 1, 'BOOONGO'),
(377, 'queen_of_the_sun', 'QUEEN OF THE SUN', 'https://cdn46952.bngsrv.com/games/banner_256_en.jpg?ts=1643099409287', 1, 'BOOONGO'),
(378, 'tiger_jungle', 'TIGER JUNGLE', 'https://cdn46952.bngsrv.com/games/banner_242_en.jpg?ts=1630999887216', 1, 'BOOONGO'),
(379, 'black_wolf', 'BLACK WOLF', 'https://cdn46952.bngsrv.com/games/banner_254_en.jpg?ts=1637589465054', 1, 'BOOONGO'),
(380, 'hit_the_gold', 'HIT THE GOLD', 'https://cdn46952.bngsrv.com/games/banner_228_en.jpg?ts=1621873173151', 1, 'BOOONGO'),
(381, 'candy_boom', 'CANDY BOOM', 'https://cdn46952.bngsrv.com/games/banner_250_en.jpg?ts=1635783617393', 1, 'BOOONGO'),
(382, 'scarab_riches', 'SCARAB RICHES', 'https://cdn46952.bngsrv.com/games/banner_168_en.jpe?ts=1568115171958', 1, 'BOOONGO'),
(383, 'golden_dancing_lion', 'GOLDEN DANCING LION', 'https://cdn46952.bngsrv.com/games/banner_252_en.jpg?ts=1637050697146', 1, 'BOOONGO'),
(384, 'dragon_pearls', 'DRAGON PEARLS', 'https://cdn46952.bngsrv.com/games/banner_151_en.jpeg?ts=1551785453936', 1, 'BOOONGO'),
(385, '3_coins', '3 COINS', 'https://cdn46952.bngsrv.com/games/banner_212_en.jpg?ts=1610363762913', 1, 'BOOONGO'),
(386, 'super_rich_god', 'SUPER RICH GOD', 'https://cdn46952.bngsrv.com/games/banner_217_en.jpg?ts=1614080397964', 1, 'BOOONGO'),
(387, '15_dragon_pearls', '15 DRAGON PEARLS', 'https://cdn46952.bngsrv.com/games/banner_197_en.jpeg?ts=1597062411022', 1, 'BOOONGO'),
(388, 'aztec_sun', 'AZTEC SUN', 'https://cdn46952.bngsrv.com/games/banner_187_en.jpe?ts=1591699656458', 1, 'BOOONGO'),
(389, 'scarab_temple', 'SCARAB TEMPLE', 'https://cdn46952.bngsrv.com/games/banner_201_en.jpeg?ts=1601369529833', 1, 'BOOONGO'),
(390, 'gods_temple_deluxe', 'GODS TEMPLE DELUXE', 'https://cdn46952.bngsrv.com/static/games/banner_86_en.png', 1, 'BOOONGO'),
(391, 'book_of_sun', 'BOOK OF SUN', 'https://cdn46952.bngsrv.com/static/games/banner_139_en.jpg', 1, 'BOOONGO'),
(392, '777_gems', '777 GEMS', 'https://cdn46952.bngsrv.com/games/banner_148_en.jpeg', 1, 'BOOONGO'),
(393, 'book_of_sun_multicha', 'BOOK OF SUN MULTICHANCE', 'https://cdn46952.bngsrv.com/games/banner_157_en.jpg?ts=1557834927593', 1, 'BOOONGO'),
(394, 'olympian_gods', 'OLYMPIAN GODS', 'https://cdn46952.bngsrv.com/games/banner_166_en.jpeg?ts=1565181937129', 1, 'BOOONGO'),
(395, '777_gems_respin', '777 GEMS RESPIN', 'https://cdn46952.bngsrv.com/games/banner_175_en.jpg?ts=1575289527907', 1, 'BOOONGO');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(396, 'tigers_gold', 'TIGERS GOLD', 'https://cdn46952.bngsrv.com/games/banner_178_en.jpe?ts=1580204919370', 1, 'BOOONGO'),
(397, 'moon_sisters', 'MOON SISTERS', 'https://cdn46952.bngsrv.com/games/banner_183_en.jpg?ts=1589276977044', 1, 'BOOONGO'),
(398, 'book_of_sun_choice', 'BOOK OF SUN CHOICE', 'https://cdn46952.bngsrv.com/games/banner_184_en.jpg?ts=1586766763403', 1, 'BOOONGO'),
(399, 'super_marble', 'SUPER MARBLE', 'https://cdn46952.bngsrv.com/games/banner_189_en.jpg?ts=1592834985255', 1, 'BOOONGO'),
(400, 'buddha_fortune', 'BUDDHA FORTUNE', 'https://cdn46952.bngsrv.com/games/banner_190_en.jpg?ts=1594723112381', 1, 'BOOONGO'),
(401, 'great_panda', 'GREAT PANDA', 'https://cdn46952.bngsrv.com/games/banner_181_en.jpg?ts=1583843045334', 1, 'BOOONGO'),
(402, '15_golden_eggs', '15 GOLDEN EGGS', 'https://cdn46952.bngsrv.com/static/games/banner_14_en.png', 1, 'BOOONGO'),
(403, 'thunder_of_olympus', 'THUNDER OF OLYMPUS', 'https://cdn46952.bngsrv.com/games/banner_200_en.jpe?ts=1599463031466', 1, 'BOOONGO'),
(404, 'eye_of_gold', 'EYE OF GOLD', 'https://cdn46952.bngsrv.com/games/banner_204_en.jpg?ts=1607423095999', 1, 'BOOONGO'),
(405, 'tiger_stone', 'TIGER STONE', 'https://cdn46952.bngsrv.com/games/banner_209_en.jpg?ts=1604945706164', 1, 'BOOONGO'),
(406, 'magic_apple', 'MAGIC APPLE', 'https://cdn46952.bngsrv.com/games/banner_219_en.jpg?ts=1615278797585', 1, 'BOOONGO'),
(407, 'wolf_saga', 'WOLF SAGA', 'https://cdn46952.bngsrv.com/games/banner_216_en.png?ts=1612371564816', 1, 'BOOONGO'),
(408, 'magic_ball', 'MAGIC BALL', 'https://cdn46952.bngsrv.com/games/banner_223_en.jpg?ts=1618214765589', 1, 'BOOONGO'),
(409, 'scarab_boost', 'SCARAB BOOST', 'https://cdn46952.bngsrv.com/games/banner_231_en.jpg?ts=1623137017503', 1, 'BOOONGO'),
(410, 'wukong', 'WUKONG', 'https://cdn46952.bngsrv.com/games/banner_233_en.jpg?ts=1624348278790', 1, 'BOOONGO'),
(411, 'pearl_diver', 'PEARL DIVER', 'https://cdn46952.bngsrv.com/games/banner_232_en.jpg?ts=1624952929307', 1, 'BOOONGO'),
(412, '3_coins_egypt', '3 COINS EGYPT', 'https://cdn46952.bngsrv.com/games/banner_236_en.jpg?ts=1626173501198', 1, 'BOOONGO'),
(413, 'ganesha_boost', 'GANESHA BOOST', 'https://cdn46952.bngsrv.com/games/banner_240_en.jpg?ts=1629708978121', 1, 'BOOONGO'),
(414, 'wolf_night', 'WOLF NIGHT', 'https://cdn46952.bngsrv.com/games/banner_237_en.jpg?ts=1628583185745', 1, 'BOOONGO'),
(415, 'book_of_wizard', 'BOOK OF WIZARD', 'https://cdn46952.bngsrv.com/games/banner_244_en.jpg?ts=1632823480279', 1, 'BOOONGO'),
(416, 'lord_fortune_2', 'LORD FORTUNE 2', 'https://cdn46952.bngsrv.com/games/banner_245_en.jpg?ts=1633430937520', 1, 'BOOONGO'),
(417, 'gold_express', 'GOLD EXPRESS', 'https://cdn46952.bngsrv.com/games/banner_249_en.jpg?ts=1634629019700', 1, 'BOOONGO'),
(418, 'book_of_wizard_cryst', 'BOOK OF WIZARD CRYSTAL', 'https://cdn46952.bngsrv.com/games/banner_255_en.jpg?ts=1641895746148', 1, 'BOOONGO'),
(419, 'pearl_diver_2', 'PEARL DIVER 2', 'https://cdn46952.bngsrv.com/games/banner_259_en.jpg?ts=1645521353434', 1, 'BOOONGO'),
(420, 'sun_of_egypt_3', 'SUN OF EGYPT 3', 'https://cdn46952.bngsrv.com/games/banner_262_en.jpg?ts=1646655112312', 1, 'BOOONGO'),
(421, 'caishen_wealth', 'CAISHEN WEALTH', 'https://cdn46952.bngsrv.com/games/banner_265_en.jpg?ts=1649711719448', 1, 'BOOONGO'),
(422, 'aztec_fire', 'AZTEC FIRE', 'https://cdn46952.bngsrv.com/games/banner_272_en.jpg?ts=1658177726858', 1, 'BOOONGO'),
(423, 'hand_of_gold', 'HAND OF GOLD', 'https://cdn46952.bngsrv.com/games/banner_220_en.png?ts=1618995876889', 1, 'PLAYSON'),
(424, 'legend_of_cleopatra', 'LEGEND OF CLEOPATRA', 'https://cdn46952.bngsrv.com/static/games/banner_69_en.jpg', 1, 'PLAYSON'),
(425, '40_joker_staxx', '40 JOKER STAXX', 'https://cdn46952.bngsrv.com/games/banner_96_en.png?ts=1616657514396', 1, 'PLAYSON'),
(426, 'burning_wins', 'BURNING WINS', 'https://cdn46952.bngsrv.com/games/banner_102_en.png?ts=1575280724870', 1, 'PLAYSON'),
(427, 'book_of_gold', 'BOOK OF GOLD', 'https://cdn46952.bngsrv.com/games/banner_133_en.png?ts=1575280724870', 1, 'PLAYSON'),
(428, '100_joker_staxx', '100 JOKER STAXX', 'https://cdn46952.bngsrv.com/games/banner_144_en.png?ts=1575280724870', 1, 'PLAYSON'),
(429, 'book_of_gold_classic', 'BOOK OF GOLD CLASSIC', 'https://cdn46952.bngsrv.com/games/banner_159_en.png?ts=1575280724870', 1, 'PLAYSON'),
(430, 'book_of_gold_multich', 'BOOK OF GOLD MULTICHANCE', 'https://cdn46952.bngsrv.com/games/banner_199_en.png?ts=1575280724870', 1, 'PLAYSON'),
(431, 'buffalo_xmas', 'BUFFALO XMAS', 'https://cdn46952.bngsrv.com/games/banner_248_en.png?ts=1575280724870', 1, 'PLAYSON'),
(432, '67', 'Golden eggs', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/67_EN.png', 1, 'CQ9'),
(433, '161', 'Hercules', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/161_EN.png', 1, 'CQ9'),
(434, '16', 'Super 5', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/16_EN.png', 1, 'CQ9'),
(435, '72', 'Happy Rich Year', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/72_EN.png', 1, 'CQ9'),
(436, '1', 'Fruit King', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/1_EN.png', 1, 'CQ9'),
(437, '163', 'Neja Advent', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/163_EN.png', 1, 'CQ9'),
(438, '26', '777', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/26_EN.png', 1, 'CQ9'),
(439, '50', 'Good fortune', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/50_EN.png', 1, 'CQ9'),
(440, '31', 'God of war', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/31_EN.png', 1, 'CQ9'),
(441, '64', 'Zeus', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/64_EN.png', 1, 'CQ9'),
(442, '69', 'Pasaycen', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/69_EN.png', 1, 'CQ9'),
(443, '89', 'Thor', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/89_EN.png', 1, 'CQ9'),
(444, '46', 'Wolf moon', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/46_EN.png', 1, 'CQ9'),
(445, '139', 'Fire chibi', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/139_EN.png', 1, 'CQ9'),
(446, '15', 'Gu Gu Gu', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/15_EN.png', 1, 'CQ9'),
(447, '140', 'Fire Chibi 2', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/140_EN.png', 1, 'CQ9'),
(448, '8', 'So Sweet', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/8_EN.png', 1, 'CQ9'),
(449, '147', 'Flower fortune', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/147_EN.png', 1, 'CQ9'),
(450, '113', 'Flying Kai Shen', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/113_EN.png', 1, 'CQ9'),
(451, '58', 'Gu Gu Gu 2', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/58_EN.png', 1, 'CQ9'),
(452, '128', 'Wheel money', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/128_EN.png', 1, 'CQ9'),
(453, '5', 'Mr Rich', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/5_EN.png', 1, 'CQ9'),
(454, '180', 'Gu Gu Gu 3', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/9835.png', 1, 'CQ9'),
(455, '118', 'SkullSkull', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/118_EN.png', 1, 'CQ9'),
(456, '148', 'Fortune totem', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/148_EN.png', 1, 'CQ9'),
(457, '144', 'Diamond treasure', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/144_EN.png', 1, 'CQ9'),
(458, '19', 'Hot spin', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/19_EN.png', 1, 'CQ9'),
(459, '112', 'Pyramid radar', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/112_EN.png', 1, 'CQ9'),
(460, '160', 'Pa Kai Shen2', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/160_EN.png', 1, 'CQ9'),
(461, '132', 'Miou', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/132_EN.png', 1, 'CQ9'),
(462, '47', 'Pharaoh gold', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/47_EN.png', 1, 'CQ9'),
(463, '13', 'Sakura legend', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/13_EN.png', 1, 'CQ9'),
(464, '34', 'Gopher\'s War', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/34_EN.png', 1, 'CQ9'),
(465, '59', 'Summer mood', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/59_EN.png', 1, 'CQ9'),
(466, '76', 'Won won won', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/76_EN.png', 1, 'CQ9'),
(467, '95', 'Football boots', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/95_EN.png', 1, 'CQ9'),
(468, '57', 'The Beast War', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/57_EN.png', 1, 'CQ9'),
(469, '17', 'Great lion', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/17_EN.png', 1, 'CQ9'),
(470, '20', '888', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/20_EN.png', 1, 'CQ9'),
(471, '182', 'Thor 2', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/10044.png', 1, 'CQ9'),
(472, '66', 'Fire 777', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/66_EN.png', 1, 'CQ9'),
(473, '2', 'God of Chess', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/2_EN.png', 1, 'CQ9'),
(474, '21', 'Big wolf', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/21_EN.png', 1, 'CQ9'),
(475, '197', 'Dragon\'s Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/11502.png', 1, 'CQ9'),
(476, '208', 'Money tree', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/11593.png', 1, 'CQ9'),
(477, '212', 'Burning Si-Yow', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/11805.png', 1, 'CQ9'),
(478, '214', 'Ninja raccoon', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/11806.png', 1, 'CQ9'),
(479, '218', 'Dollar night', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/12141.png', 1, 'CQ9'),
(480, 'greatwall', 'The Great Wall Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/The_Great_Wall_Treasures_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(481, 'chinesenewyear', 'Chinese New Year', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Chinese_New_Year_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(482, 'jewellerystore', 'Jewelry store', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Jewellery_Store_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(483, 'redcliff', 'Red cliff', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Red_Cliff_360x340.png', 1, 'EVOPLAY'),
(484, 'ElvenPrincesses', 'Elven Princess', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Elven_Princesses_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(485, 'robinzon', 'Robinson', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Robinson_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(486, 'aeronauts', 'Aeronauts', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Aeronauts_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(487, 'NukeWorld', 'Nook World', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/9102.jpg', 1, 'EVOPLAY'),
(488, 'legendofkaan', 'Legend of Khan', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/10033.png', 1, 'EVOPLAY'),
(489, 'LivingTales', 'Night of the Living Tales', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11292.jpg', 1, 'EVOPLAY'),
(490, 'IceMania', 'Ice mania', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11384.jpg', 1, 'EVOPLAY'),
(491, 'ValleyOfDreams', 'Valley of Dreams', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11427.png', 1, 'EVOPLAY'),
(492, 'FruitNova', 'Fruit Nova', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11428.jpg', 1, 'EVOPLAY'),
(493, 'TreeOfLight', 'Tree of light', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11503.png', 1, 'EVOPLAY'),
(494, 'TempleOfDead', 'Temple of the dead', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11604.png', 1, 'EVOPLAY'),
(495, 'RunesOfDestiny', 'Runes of Destiny', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11728.png', 1, 'EVOPLAY'),
(496, 'EllensFortune', 'Ellen Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11729.jpg', 1, 'EVOPLAY'),
(497, 'UnlimitedWishes', 'Unlimited Wishes', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11807.jpg', 1, 'EVOPLAY'),
(498, 'FoodFeast', 'Food fist', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11808.jpg', 1, 'EVOPLAY'),
(499, 'EpicLegends', 'Epic legends', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11810.jpg', 1, 'EVOPLAY'),
(500, 'SweetSugar', 'Sweet sugar', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11811.png', 1, 'EVOPLAY'),
(501, 'GangsterNight', 'Gangster night', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12057.jpg', 1, 'EVOPLAY'),
(502, 'GoldOfSirens', 'Gold of sirens', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12058.jpg', 1, 'EVOPLAY'),
(503, 'BloodyBrilliant', 'Bloody brilliant', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12059.jpg', 1, 'EVOPLAY'),
(504, 'TempleOfDeadBonusBuy', 'Temple of the Dead BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12133.jpg', 1, 'EVOPLAY'),
(505, 'AnubisMoon', 'Anubis moon', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12171.jpg', 1, 'EVOPLAY'),
(506, 'FruitDisco', 'Fruit disco', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12172.jpg', 1, 'EVOPLAY'),
(507, 'FruitSuperNova30', 'Fruit Super Nova 30', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12173.jpg', 1, 'EVOPLAY'),
(508, 'CurseOfThePharaoh', 'Curse of the Pharaoh', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12174.jpg', 1, 'EVOPLAY'),
(509, 'FruitSuperNova60', 'Fruit Super Nova 60', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12227.jpg', 1, 'EVOPLAY'),
(510, 'CurseofthePharaohBon', 'Curse of the Pharaoh BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12228.jpg', 1, 'EVOPLAY'),
(511, 'FruitSuperNova100', 'Fruit Super Nova 100', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12256.jpg', 1, 'EVOPLAY'),
(512, 'ChristmasReach', 'Christmas lychee', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12269.jpg', 1, 'EVOPLAY'),
(513, 'FruitSuperNova80', 'Whoft Super Nova 80', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12326.jpg', 1, 'EVOPLAY'),
(514, 'DragonsTavern', 'Dragon\'s Tavern', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12327.jpg', 1, 'EVOPLAY'),
(515, 'ChristmasReachBonusB', 'Christmas Riti BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12329.jpg', 1, 'EVOPLAY'),
(516, 'WildOverlords', 'Wild overlord', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12329.jpg', 1, 'EVOPLAY'),
(517, 'DragonsTavernBonusBu', 'Dragon\'s Tavern BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12358.jpg', 1, 'EVOPLAY'),
(518, 'BudaiReels', 'Budai reels', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12381.jpg', 1, 'EVOPLAY'),
(519, 'MoneyMinter', 'Money minter', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12575_.jpeg', 1, 'EVOPLAY'),
(520, 'JuicyGems', 'Watch gem', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12895.jpg', 1, 'EVOPLAY'),
(521, 'JuicyGemsBB', 'Watch Gem BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12896.jpg', 1, 'EVOPLAY'),
(522, 'TheGreatestCatch', 'The Greatest Catch', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12892.jpg', 1, 'EVOPLAY'),
(523, 'TheGreatestCatchBonu', 'The Greatest Catch BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12893.jpg', 1, 'EVOPLAY'),
(524, 'TreeOfLightBB', 'Tree of Light BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12899.jpg', 1, 'EVOPLAY'),
(525, 'WolfHiding', 'Wolf Hiding', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12953.jpg', 1, 'EVOPLAY'),
(526, 'CaminoDeChili', 'Camino de Chili', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12902.jpg', 1, 'EVOPLAY'),
(527, 'CandyDreamsSweetPlan', 'Candy dreams', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12902.jpg', 1, 'EVOPLAY'),
(528, 'WildOverlordsBonusBu', 'Wild Overlord BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12890.jpg', 1, 'EVOPLAY'),
(529, 'TempleOfThunder', 'Temple of Thunder', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12891.jpg', 1, 'EVOPLAY'),
(530, 'WildTriads', 'WildTriads', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/WildTriads.png', 1, 'TOPTREND'),
(531, 'ReelsOfFortune', 'Reels Of Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/ReelsOfFortune.png', 1, 'TOPTREND'),
(532, 'GoldenAmazon', 'Golden Amazon', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/GoldenAmazon.png', 1, 'TOPTREND'),
(533, 'MonkeyLuck', 'MonkeyLuck', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/MonkeyLuck.png', 1, 'TOPTREND'),
(534, 'LeagueOfChampions', 'League Of Champions', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/LeagueOfChampions.png', 1, 'TOPTREND'),
(535, 'MadMonkeyH5', 'MadMonkey', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/MadMonkeyH5.png', 1, 'TOPTREND'),
(536, 'DynastyEmpire', 'Dynasty Empire', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/DynastyEmpire.png', 1, 'TOPTREND'),
(537, 'SuperKids', 'SuperKids', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/SuperKids.png', 1, 'TOPTREND'),
(538, 'HotVolcanoH5', 'HotVolcano', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/HotVolcano.png', 1, 'TOPTREND'),
(539, 'Huluwa', 'Huluwa', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/Huluwa.png', 1, 'TOPTREND'),
(540, 'LegendOfLinkH5', 'LegendOfLink', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/LegendOfLinkH5.png', 1, 'TOPTREND'),
(541, 'DetectiveBlackCat', 'DetectiveBlackCat', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/DetectiveBlackcat.png', 1, 'TOPTREND'),
(542, 'ChilliGoldH5', 'Chilli Gold', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/ChiliGoldH5.png', 1, 'TOPTREND'),
(543, 'SilverLionH5', 'Silver Lion', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/SilverLionH5.png', 1, 'TOPTREND'),
(544, 'ThunderingZeusH5', 'ThunderingZeus', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/ThunderingZeus.png', 1, 'TOPTREND'),
(545, 'DragonPalaceH5', 'Dragon Palace', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11658.png', 1, 'TOPTREND'),
(546, 'MadMonkey2', 'MadMonkey', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11660.png', 1, 'TOPTREND'),
(547, 'MedusaCurse', 'Medusa Curse', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11661.png', 1, 'TOPTREND'),
(548, 'BattleHeroes', 'Battle Heroes', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11662.png', 1, 'TOPTREND'),
(549, 'NeptunesGoldH5', 'Neptunes Gold', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11664.png', 1, 'TOPTREND'),
(550, 'HeroesNeverDie', 'Heroes Never Die', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11665.png', 1, 'TOPTREND'),
(551, 'WildWildWitch', 'Wild Wild Witch', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11666.png', 1, 'TOPTREND'),
(552, 'WildKartRacers', 'Wild Kart Racers', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11667.png', 1, 'TOPTREND'),
(553, 'KingDinosaur', 'KingDinosaur', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11668.png', 1, 'TOPTREND'),
(554, 'GoldenGenie', 'GoldenGenie', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11669.png', 1, 'TOPTREND'),
(555, 'UltimateFighter', 'UltimateFighter', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11672.png', 1, 'TOPTREND'),
(556, 'EverlastingSpins', 'EverlastingSpins', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11673.png', 1, 'TOPTREND'),
(557, 'Zoomania', 'Zoomania', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11676.png', 1, 'TOPTREND'),
(558, 'LaserCats', 'Laser Cats', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11679.png', 1, 'TOPTREND'),
(559, 'DiamondFortune', 'DiamondFortune', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11682.png', 1, 'TOPTREND'),
(560, 'GoldenClaw', 'GoldenClaw', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11685.png', 1, 'TOPTREND'),
(561, 'PandaWarrior', 'PandaWarrior', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11687.png', 1, 'TOPTREND'),
(562, 'RoyalGoldenDragon', 'RoyalGoldenDragon', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11690.png', 1, 'TOPTREND'),
(563, 'MegaMaya', 'MegaMaya', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11697.png', 1, 'TOPTREND'),
(564, 'MegaPhoenix', 'MegaPhoenix', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11864.png', 1, 'TOPTREND'),
(565, 'DolphinGoldH5', 'DolphinGold', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/DolphinGoldH5.png', 1, 'TOPTREND'),
(566, 'DragonKingH5', 'DragonKing', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/DragonKingH5.png', 1, 'TOPTREND'),
(567, 'LuckyPandaH5', 'LuckyPanda', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/LuckyPanda.png', 1, 'TOPTREND'),
(568, 'btball5x20', 'Crazy Basketball', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/021.Crazy Basketball.png', 1, 'DREAMTECH'),
(569, 'dnp', 'DragonPhoenix Prosper', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/022.DragonPhoenix Prosper.png', 1, 'DREAMTECH'),
(570, 'crystal', 'Glory of Heroes', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/023.Glory of Heroes.png', 1, 'DREAMTECH'),
(571, 'xjqy5x9', 'Chinese Paladin', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/024.Chinese Paladin.png', 1, 'DREAMTECH'),
(572, 'fls', 'FULUSHOU', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/025.FULUSHOU.png', 1, 'DREAMTECH'),
(573, 'fourss', 'Four Holy Beasts', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/026.Four Holy Beasts.png', 1, 'DREAMTECH'),
(574, 'casino', '3D Slot', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/028.3D Slot.png', 1, 'DREAMTECH'),
(575, 'crazy5x243', 'Crazy GO GO GO', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/029.Crazy GO GO GO.png', 1, 'DREAMTECH'),
(576, 'rocknight', 'RocknRoll Night', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/031.RocknRoll Night.png', 1, 'DREAMTECH'),
(577, 'bluesea', 'Blue Sea', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/032.Blue Sea.png', 1, 'DREAMTECH'),
(578, 'klnz5x20', 'Happy Farm', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/033.Happy Farm.png', 1, 'DREAMTECH'),
(579, 'circus', 'Crazy Circus', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/034.Crazy Circus.png', 1, 'DREAMTECH'),
(580, 'sq5x243', '4X4 BATTLE', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/036.4X4 BATTLE.png', 1, 'DREAMTECH'),
(581, 'bikini', 'Bikini Party', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/037.Bikini Party.png', 1, 'DREAMTECH'),
(582, 'estate5x25', 'Monopoly', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/039.Monopoly.png', 1, 'DREAMTECH'),
(583, 'piratetreasure', 'Pirate_Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/042.PirateTreasure.png', 1, 'DREAMTECH'),
(584, 'foryouth5x25', 'SO YOUNG', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/045.SO YOUNG.png', 1, 'DREAMTECH'),
(585, 'fourbeauty', 'Four Beauties', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/046.Four Beauties.png', 1, 'DREAMTECH'),
(586, 'sweethouse', 'Candy House', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/047.Candy House.png', 1, 'DREAMTECH'),
(587, 'legend5x25', 'Legend of the King', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/048.Legend of the King.png', 1, 'DREAMTECH'),
(588, 'rocket6x25', 'Happiness Overflow', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/049.Happiness Overflow.png', 1, 'DREAMTECH'),
(589, 'hotpot5x25', 'Spicy Hotpot', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/050.Spicy Hotpot.png', 1, 'DREAMTECH'),
(590, 'opera', 'Beijing opera', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/051.Beijing opera.jpeg', 1, 'DREAMTECH'),
(591, 'bigred', 'Big Red', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/055.Big Red.jpeg', 1, 'DREAMTECH'),
(592, 'wrathofthor', 'Wrath of Thor', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/056.Wrath of Thor.png', 1, 'DREAMTECH'),
(593, 'boxingarena', 'Boxing Arena', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/059.Boxing Arena.jpeg', 1, 'DREAMTECH'),
(594, 'bxgh5x25', 'Eight Immortals', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/060.Eight Immortals.png', 1, 'DREAMTECH'),
(595, 'fantasyforest', 'Elf Kingdom', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/061.Elf Kingdom.png', 1, 'DREAMTECH'),
(596, 'camgirl5x25', 'Sexy Camgirl', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/062.Sexy Camgirl.png', 1, 'DREAMTECH'),
(597, 'hotpotfeast', 'Hotpot Feast', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/064.Hotpot Feast.png', 1, 'DREAMTECH'),
(598, 'magician', 'Magician', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/065.Magician.png', 1, 'DREAMTECH'),
(599, 'armorCrisis5x25', 'Armor Crisis', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/067.Armor Crisis.jpeg', 1, 'DREAMTECH'),
(600, 'galaxywars', 'Galaxy Wars', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/068.Galaxy Wars.png', 1, 'DREAMTECH'),
(601, 'easyrider', 'Easy Rider', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/069.Easy Rider.png', 1, 'DREAMTECH'),
(602, 'bwzq5x25', 'Joust for a spouse', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/070.Joust for a spouse.png', 1, 'DREAMTECH'),
(603, 'worldCup5x25', 'FIFA World Cup', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/071.FIFA World Cup.png', 1, 'DREAMTECH'),
(604, 'goldjade5x50', 'Jin Yu Man Tang', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/072.Jin Yu Man Tang.png', 1, 'DREAMTECH'),
(605, 'shokudo', 'shokudo', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/073.shokudo.jpeg', 1, 'DREAMTECH'),
(606, 'train', 'Treasure Hunt Trip', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/074.Treasure Hunt Trip.png', 1, 'DREAMTECH'),
(607, 'oceanpark5x50', 'Ocean Park', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/075.Ocean Park.jpeg', 1, 'DREAMTECH'),
(608, 'lovefighters', 'Love Fighters', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/077.Love Fighters.png', 1, 'DREAMTECH'),
(609, 'genie', 'Aladdin\'s Wish', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/078.Aladdin\'s Wish.png', 1, 'DREAMTECH'),
(610, 'garden', 'Little Big Garden', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/079.Little Big Garden.png', 1, 'DREAMTECH'),
(611, 'legendary', 'Legendary Tales', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/081.Legendary Tales.png', 1, 'DREAMTECH'),
(612, 'superstar5x50', 'Star Generation', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/083.Star Generation.png', 1, 'DREAMTECH'),
(613, 'alchemist', 'Crazy Alchemist', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/084.Crazy Alchemist.png', 1, 'DREAMTECH'),
(614, 'dinosaur5x25', 'Dinosaur World', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/089.Dinosaur World.png', 1, 'DREAMTECH'),
(615, 'shopping5x243', 'National Carnival', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/090.National Carnival.png', 1, 'DREAMTECH'),
(616, 'tombshadow', 'Tomb Shadow', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/086.Tomb Shadow.png', 1, 'DREAMTECH'),
(617, 'clash', 'Clash of Three kingdoms', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/088.Clash of Three kingdoms.png', 1, 'DREAMTECH'),
(618, 'icefire', 'Ice And Fire', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/093.Ice And Fire.png', 1, 'DREAMTECH'),
(619, 'legendMir5x25', 'Legendary Hegemony', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/095.Legendary Hegemony.png', 1, 'DREAMTECH'),
(620, 'whackamole', 'Whack-A-Mole', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/094.Whack-A-Mole.png', 1, 'DREAMTECH'),
(621, 'onenight5x243', 'Truffle Butter', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/096.Truffle Butter.png', 1, 'DREAMTECH'),
(622, 'magicbean', 'Magic Bean Legend', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/097.Magic Bean Legend.png', 1, 'DREAMTECH'),
(623, 'xiaoxiaole7x50', 'Monster Pop', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/103.Monster Pop.png', 1, 'DREAMTECH'),
(624, 'newyear5x25', 'Happy Piggy New Year', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/101.Happy Piggy New Year.png', 1, 'DREAMTECH'),
(625, 'secretdate', 'Secret Date', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/104.Secret Date.png', 1, 'DREAMTECH'),
(626, 'king5x25', 'Im King', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/105.ImKing.png', 1, 'DREAMTECH'),
(627, 'bacteria', 'Germ Lab', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/106.GermLab.png', 1, 'DREAMTECH'),
(628, 'cute5x50', 'Castle Guardian', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/107.CastleGurdian.png', 1, 'DREAMTECH'),
(629, 'baseball', 'Baseball Frenzy', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/108.BaseballFrenzy.png', 1, 'DREAMTECH'),
(630, 'streetdance5x25', 'Street Dance Show', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/109.StreetDanceShow.png', 1, 'DREAMTECH'),
(631, 'museum', 'Wondrous Museum', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/110.WondrousMuseum.png', 1, 'DREAMTECH'),
(632, 'mysticalstones', 'Mystical Stones', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/111.MysticalStones.png', 1, 'DREAMTECH'),
(633, 'sincity', 'Sin City', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/113.SinCity.png', 1, 'DREAMTECH'),
(634, 'wheel', 'Secrets of The Pentagram', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/114.Secretsofthe pentagram.png', 1, 'DREAMTECH'),
(635, 'westwild', 'West Wild', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/116.WestWild.png', 1, 'DREAMTECH'),
(636, 'halloween', 'Witch Winnings', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/115.WitchWinnings.png', 1, 'DREAMTECH'),
(637, 'bloodmoon', 'Blood Wolf legend', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/118.BloodWolf.png', 1, 'DREAMTECH'),
(638, 'wildchaser5x20', 'Battle Field', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/120.BattleField.png', 1, 'DREAMTECH'),
(639, 'dragonball2', 'Heroes of the East', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/121.HeroesofTheEast.png', 1, 'DREAMTECH'),
(640, 'sgkill5x20', 'Three Kingdoms', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/122.ThreeKingdoms.png', 1, 'DREAMTECH'),
(641, 'pirate5x25', 'Captain\'s Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9658.png', 1, 'DREAMTECH'),
(642, 'muaythai', 'Muaythai', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9659.png', 1, 'DREAMTECH'),
(643, 'sailor', 'Sailor Princess', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9660.png', 1, 'DREAMTECH'),
(644, 'nightclub', 'Infinity Club', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9661.png', 1, 'DREAMTECH'),
(645, 'nezha', 'Nezha Legend', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9662.png', 1, 'DREAMTECH'),
(646, 'bird', 'Bird Island', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10900.png', 1, 'DREAMTECH'),
(647, 'chess', 'Dragon Auto Chess', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10901.png', 1, 'DREAMTECH'),
(648, 'honor', 'Field Of Honor', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10902.png', 1, 'DREAMTECH'),
(649, 'goldrat5x243', 'Golden Rat', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10905.png', 1, 'DREAMTECH'),
(650, 'girlgroup5x25', 'Sexy Girls', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10906.png', 1, 'DREAMTECH'),
(651, 'boss5x20', 'Rich Asians', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10907.png', 1, 'DREAMTECH'),
(652, 'vikings', 'Nordic Saga', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10908.png', 1, 'DREAMTECH'),
(653, 'treasures', 'Secret Treasures', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10909.png', 1, 'DREAMTECH'),
(654, 'shiningstars', 'ShiningStars', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11268.png', 1, 'DREAMTECH'),
(655, 'tgow2plus', 'Cai Shen Dao Plus', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11555.png', 1, 'DREAMTECH'),
(656, 'peeping', 'Peeping', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11556.png', 1, 'DREAMTECH'),
(657, 'ds5x25', 'Drawing Sword', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12032.png', 1, 'DREAMTECH'),
(658, 'empire5x40', 'The Magic Blade', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12033.png', 1, 'DREAMTECH'),
(659, 'luckyfortune5x50', 'Lucky Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12034.png', 1, 'DREAMTECH'),
(660, 'maidhotel5x25', 'Maid Hotel', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12035.png', 1, 'DREAMTECH'),
(661, 'secretary3x9', 'Sexy Secretary', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12036.png', 1, 'DREAMTECH'),
(662, 'hawaii5x20', 'Hawaii Vacation', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12037.png', 1, 'DREAMTECH'),
(663, 'billiards5x243', 'POOL EIGHT BALL', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12362.png', 1, 'DREAMTECH'),
(664, 'bikini-paradise', 'Bikini Paradise', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11360.png', 1, 'PGSOFT'),
(665, 'ganesha-fortune', 'Ganesha Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11363.png', 1, 'PGSOFT'),
(666, 'queen-bounty', 'Queen of Bounty', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11610.jpg', 1, 'PGSOFT'),
(667, 'galactic-gems', 'Galactic Gems', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11614.png', 1, 'PGSOFT'),
(668, 'gdn-ice-fire', 'Guardians of Ice and Fire', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11615.png', 1, 'PGSOFT'),
(669, 'opera-dynasty', 'Opera Dynasty', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11616.png', 1, 'PGSOFT'),
(670, 'fortune-ox', 'Fortune Ox', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11617.png', 1, 'PGSOFT'),
(671, 'wild-bandito', 'Wild Bandito', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11855.jpg', 1, 'PGSOFT'),
(672, 'candy-bonanza', 'Candy Bonanza', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11854.jpg', 1, 'PGSOFT'),
(673, 'majestic-ts', 'Majestic Treasures', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11853.jpg', 1, 'PGSOFT'),
(674, 'buffalo-win', 'Buffalo Win', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12208.png', 1, 'PGSOFT'),
(675, 'emoji-riches', 'Emoji Riches', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12308.png', 1, 'PGSOFT'),
(676, 'cocktail-nite', 'Cocktail Nights', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12309.png', 1, 'PGSOFT'),
(677, 'dest-sun-moon', 'Destiny of Sun & Moon', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12505.png', 1, 'PGSOFT'),
(678, 'battleground', 'Battleground Royale', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12633.jpg', 1, 'PGSOFT'),
(679, 'vs5ultrab', 'Ultra Burn', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5ultrab.png', 1, 'REELKINGDOM'),
(680, 'vs5ultra', 'Ultra Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5ultra.png', 1, 'REELKINGDOM'),
(681, 'vs10returndead', 'Return of the Dead', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10returndead.png', 1, 'REELKINGDOM'),
(682, 'vs10bbbonanza', 'Big Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bbbonanza.png', 1, 'REELKINGDOM'),
(683, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20hburnhs.png', 1, 'REELKINGDOM'),
(684, 'vswayslight', 'Lucky Lightning', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayslight.png', 1, 'REELKINGDOM'),
(685, 'vs12bbb', 'Bigger Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs12bbb.png', 1, 'REELKINGDOM'),
(686, 'vs432congocash', 'Congo Cash', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs432congocash.png', 1, 'REELKINGDOM'),
(687, 'vs1024temuj', 'Temujin Treasures', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024temuj.png', 1, 'REELKINGDOM'),
(688, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bxmasbnza.png', 1, 'REELKINGDOM'),
(689, 'vs20terrorv', 'Cash Elevator', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20terrorv.png', 1, 'REELKINGDOM'),
(690, 'vswaysbbb', 'Big Bass Bonanza Megaways™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysbbb.png', 1, 'REELKINGDOM'),
(691, 'vs40bigjuan', 'Big Juan', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40bigjuan.png', 1, 'REELKINGDOM'),
(692, 'vs10starpirate', 'Star Pirates Code', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10starpirate.png', 1, 'REELKINGDOM'),
(693, 'vs5hotburn', 'Hot to burn', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5hotburn.png', 1, 'REELKINGDOM'),
(694, 'vs25bkofkngdm', 'Book of Kingdoms', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25bkofkngdm.png', 1, 'REELKINGDOM'),
(695, 'vs20ekingrr', 'Emerald King Rainbow Road', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20ekingrr.png', 1, 'REELKINGDOM'),
(696, 'vs10eyestorm', 'Eye of the Storm', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10eyestorm.png', 1, 'REELKINGDOM'),
(697, 'vs10amm', 'The Amazing Money Machine', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10amm.png', 1, 'REELKINGDOM'),
(698, 'vs10luckcharm', 'Lucky Grace And Charm', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10luckcharm.png', 1, 'REELKINGDOM'),
(699, 'vs25goldparty', 'Gold Party®', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25goldparty.png', 1, 'REELKINGDOM'),
(700, 'vs20rockvegas', 'Rock Vegas Mega Hold & Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rockvegas.png', 1, 'REELKINGDOM'),
(701, 'vs10tictac', 'Tic Tac Take', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10tictac.png', 1, 'REELKINGDOM'),
(702, 'vs243queenie', 'Queenie', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243queenie.png', 1, 'REELKINGDOM'),
(703, 'vs10spiritadv', 'Spirit of Adventure', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10spiritadv.png', 1, 'REELKINGDOM'),
(704, 'vs5littlegem', '?? ? ?? ? ??', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5littlegem.png', 1, 'REELKINGDOM'),
(705, '100', 'Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(706, '101', 'Speed Cricket Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(707, '102', 'Fortune Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(708, '105', 'Speed Fortune Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/981.png', 1, 'EZUGI'),
(709, '106', 'VIP Fortune Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/1008.png', 1, 'EZUGI'),
(710, '107', 'Italian Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/1009.png', 1, 'EZUGI'),
(711, '120', 'Knockout Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(712, '130', 'Super 6 Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(713, '150', 'Dragon Tiger', 'https://media.ttfileserver.com/361/ezugi/300x300/967.png', 1, 'EZUGI'),
(714, '170', 'No Commission Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/966.png', 1, 'EZUGI'),
(715, '171', 'VIP No Commission Speed Cricket Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(716, '1000', 'Italian Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(717, '5001', 'Auto Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/994.png', 1, 'EZUGI'),
(718, '32100', 'Casino Marina Baccarat 1', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(719, '32101', 'Casino Marina Baccarat 2', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(720, '32102', 'Casino Marina Baccarat 3', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(721, '32103', 'Casino Marina Baccarat 4', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(722, '43100', 'Fiesta Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/1006.png', 1, 'EZUGI'),
(723, '221000', 'Speed Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/928.png', 1, 'EZUGI'),
(724, '221002', 'Speed Auto Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/937.png', 1, 'EZUGI'),
(725, '221003', 'Diamond Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/929.png', 1, 'EZUGI'),
(726, '221004', 'Prestige Auto Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/938.png', 1, 'EZUGI'),
(727, '221005', 'Namaste Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/930.png', 1, 'EZUGI'),
(728, '224100', 'Ultimate Sic Bo', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(729, '228000', 'Andar Bahar', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(730, '228001', 'Lucky 7', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(731, '228100', 'Ultimate Andar Bahar', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(732, '321000', 'Casino Marina Roulette 1', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(733, '321001', 'Casino Marina Roulette 2', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(734, '411000', 'Spanish Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(735, '431000', 'Ruleta del Sol', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(736, '431001', 'Fiesta Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/1004.png', 1, 'EZUGI'),
(737, '481001', 'EZ Dealer Roulette Thai', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(738, '481002', 'EZ Dealer Roulette Japanese', 'https://media.ttfileserver.com/361/ezugi/300x300/984.png', 1, 'EZUGI'),
(739, '481003', 'EZ Dealer Roulette Mandarin', 'https://media.ttfileserver.com/361/ezugi/300x300/985.png', 1, 'EZUGI'),
(740, '481004', 'EZ Dealer Roulette Brazil', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(741, '501000', 'Turkish Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/932.png', 1, 'EZUGI'),
(742, '541000', 'Ultimate Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(743, '601000', 'Russian Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(744, '611000', 'Portomaso Roulette 2', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(745, '611001', 'Oracle Real Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(746, '611003', 'Oracle 360 Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EZUGI'),
(747, '01rb77cq1gtenhmo', 'Auto-Roulette VIP', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Auto-Roulette_VIP.png', 1, 'EVOLUTION'),
(748, 'qgqrucipvltnvnvq', 'Speed Baccarat W', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_W.png', 1, 'EVOLUTION'),
(749, 'p34i6wgax7bqb5cg', 'Salon Privé Baccarat G', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_G.png', 1, 'EVOLUTION'),
(750, 'GJSBJ00000000001', 'Grand Japanese Blackjack', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(751, 'JapSpeedBac00001', 'Japanese Speed Baccarat A', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(752, 'DragonTiger00001', 'Dragon Tiger', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Dragon_Tiger.png', 1, 'EVOLUTION'),
(753, 'SalPrivBac000010', 'Salon Privé Baccarat J', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_J.png', 1, 'EVOLUTION'),
(754, 'SpeedBlackjack03', 'Speed VIP Blackjack C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_C.png', 1, 'EVOLUTION'),
(755, 'NoCommBac0000001', 'No Commission Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/No_Commission_Baccarat.png', 1, 'EVOLUTION'),
(756, 'qfyw6u63rixe3foz', 'Blackjack VIP 25', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_25.png', 1, 'EVOLUTION'),
(757, 'PTBaccarat000001', 'Prosperity Tree Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Prosperity_Tree_Baccarat.png', 1, 'EVOLUTION'),
(758, 'p63cmvmwagteemoy', 'Korean Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(759, 'rep45wbxnyjl7hr2', 'Speed Baccarat 5', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_5.png', 1, 'EVOLUTION'),
(760, 'MonBigBaller0001', 'MONOPOLY Big Baller', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/MONOPOLY_Big_Baller.png', 1, 'EVOLUTION'),
(761, 'LightningTable01', 'Lightning Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Lightning_Roulette.png', 1, 'EVOLUTION'),
(762, 'SalPrivBac000011', 'Salon Privé Baccarat K', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_K.png', 1, 'EVOLUTION'),
(763, 'ndgvz5mlhfuaad6e', 'Speed Baccarat D', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_D.png', 1, 'EVOLUTION'),
(764, 'obj64qcnqfunjelj', 'Speed Baccarat J', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_J.png', 1, 'EVOLUTION'),
(765, 'ExChEpicSpins001', 'Extra Chilli Epic Spins', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Extra_Chilli_Epic_Spins.png', 1, 'EVOLUTION'),
(766, 'SpeedBlackjack01', 'Speed VIP Blackjack A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_A.png', 1, 'EVOLUTION'),
(767, 'qgqrv4asvltnvuty', 'Speed Baccarat X', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_X.png', 1, 'EVOLUTION'),
(768, 'CFreeBetBjVIP002', 'Free Bet VIP Blackjack B', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(769, 'pdk54i3vey6up3dg', 'Blackjack VIP 16', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_16.png', 1, 'EVOLUTION'),
(770, '48z5pjps3ntvqc1b', 'Auto-Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Auto-Roulette.png', 1, 'EVOLUTION'),
(771, 'p2f2lphftc2muaql', 'Blackjack VIP 21', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_21.png', 1, 'EVOLUTION'),
(772, 'rctf4gu6btsmghbt', 'Blackjack VIP 32', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_32.png', 1, 'EVOLUTION'),
(773, 'q6wo7mqrrnlhuj6b', 'Blackjack VIP 29', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_29.png', 1, 'EVOLUTION'),
(774, 'qgdk6rtpw6hax4fe', 'Korean Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(775, 'nmwde3fd7hvqhq43', 'Speed Baccarat F', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_F.png', 1, 'EVOLUTION'),
(776, 'ocye2ju2bsoyq6vv', 'Speed Baccarat K', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_K.png', 1, 'EVOLUTION'),
(777, 'ovu5eja74ccmyoiq', 'Speed Baccarat N', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_N.png', 1, 'EVOLUTION'),
(778, 'EmperorSB0000001', 'Emperor Sic Bo', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Sic_Bo.png', 1, 'EVOLUTION'),
(779, 'SBCTable00000001', 'Side Bet City', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Side_Bet_City.png', 1, 'EVOLUTION'),
(780, 'nmwdzhbg7hvqh6a7', 'Speed Baccarat G', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_G.png', 1, 'EVOLUTION'),
(781, 'SpeedBlackjack16', 'Speed VIP Blackjack P', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(782, 'AmericanTable001', 'American Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/American_Roulette.png', 1, 'EVOLUTION'),
(783, 'o735cjzyaeasv4o6', 'Blackjack VIP 3', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_3.png', 1, 'EVOLUTION'),
(784, 'SpeedBlackjack18', 'Speed VIP Blackjack R', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(785, 'pv5q45yjhasyt46y', 'Emperor Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Roulette.png', 1, 'EVOLUTION'),
(786, 'pdk5zo7cey6upxlm', 'Blackjack VIP 12', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_12.png', 1, 'EVOLUTION'),
(787, 'ndgv45bghfuaaebf', 'Speed Baccarat E', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_E.png', 1, 'EVOLUTION'),
(788, 'o735di2eiwssv7eu', 'Blackjack VIP 4', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_4.png', 1, 'EVOLUTION'),
(789, 'o735azzsaeasv2pr', 'Blackjack VIP 2', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_2.png', 1, 'EVOLUTION'),
(790, '7x0b1tgh7agmf6hv', 'Immersive Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Immersive_Roulette.png', 1, 'EVOLUTION'),
(791, 'JapSpeedBac00002', 'Japanese Speed Baccarat B', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(792, 'rng-dragontiger0', 'First Person Dragon Tiger', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(793, 'sni5cza6d1vvl50i', 'Blackjack Party', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_Party.png', 1, 'EVOLUTION'),
(794, 'ovu5h6b3ujb4y53w', 'No Commission Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/No_Commission_Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(795, 'Craps00000000001', 'Craps', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Craps.png', 1, 'EVOLUTION'),
(796, 'pdk5yexcz4iepelq', 'Blackjack VIP 10', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_10.png', 1, 'EVOLUTION'),
(797, 'SpeedBlackjack15', 'Speed VIP Blackjack O', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(798, 'SalPrivBac000008', 'Salon Privé Baccarat H', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_H.png', 1, 'EVOLUTION');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(799, 'qsf63ownyvbqnz33', 'Speed Baccarat Z', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_Z.png', 1, 'EVOLUTION'),
(800, 'ndgvwvgthfuaad3q', 'Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(801, 'RngMegaBall00001', 'First Person Mega Ball', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(802, 'qgqrhfvsvltnueqf', 'Speed Baccarat U', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_U.png', 1, 'EVOLUTION'),
(803, 'CSPTable00000001', 'Caribbean Stud Poker', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Caribbean_Stud_Poker.png', 1, 'EVOLUTION'),
(804, 'pdk53n4bjkgepr5u', 'Blackjack VIP 15', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_15.png', 1, 'EVOLUTION'),
(805, 'q25bmd63gsy3ngfl', 'Korean Speed Baccarat E', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_E.png', 1, 'EVOLUTION'),
(806, 'rng-topcard00001', 'First Person Football Studio', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(807, 'p2f2uxiym2tmvzgq', 'Speed VIP Blackjack H', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_H.png', 1, 'EVOLUTION'),
(808, 'n4jwxsz2x4tqitvx', 'Japanese Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(809, 'f1f4rm9xgh4j3u2z', 'Auto-Roulette La Partage', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Auto-Roulette_La_Partage.png', 1, 'EVOLUTION'),
(810, 'Monopoly00000001', 'MONOPOLY Live', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/MONOPOLY_Live.png', 1, 'EVOLUTION'),
(811, 'leqhceumaq6qfoug', 'Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(812, 'puu47n7mic3rfd7y', 'Emperor Dragon Tiger', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Dragon_Tiger.png', 1, 'EVOLUTION'),
(813, 'p2f2ootrm2tmvk6h', 'Blackjack VIP 22', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_22.png', 1, 'EVOLUTION'),
(814, 'ps3ufteekfe2fu24', 'Speed VIP Blackjack E', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_E.png', 1, 'EVOLUTION'),
(815, 'qgonc7t4ucdiel4o', 'Speed Baccarat T', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_T.png', 1, 'EVOLUTION'),
(816, 'ETHTable00000001', 'Extreme Texas Hold\'em', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Extreme_Texas_Holdem.png', 1, 'EVOLUTION'),
(817, 'q6ardco6opnfwes4', 'Emperor Speed Baccarat D', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Speed_Baccarat_D.png', 1, 'EVOLUTION'),
(818, '7nyiaws9tgqrzaz3', 'Football Studio Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Football_Studio_Roulette.png', 1, 'EVOLUTION'),
(819, 'RngCraps00000001', 'First Person Craps', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(820, 'ndgvs3tqhfuaadyg', 'Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_C.png', 1, 'EVOLUTION'),
(821, 'pwsaqk24fcz5qpcr', 'Emperor Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(822, 'qfyxgwwsrcfe5lq3', 'Blackjack VIP 27', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_27.png', 1, 'EVOLUTION'),
(823, 'lkcbrbdckjxajdol', 'Speed Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Roulette.png', 1, 'EVOLUTION'),
(824, 'rdjda6zq7jdyo6cs', 'Speed Baccarat 4', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_4.png', 1, 'EVOLUTION'),
(825, 'q6wo6fjprnlhuf36', 'Blackjack VIP 28', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_28.png', 1, 'EVOLUTION'),
(826, 'o4kymodby2fa2c7g', 'Speed Baccarat S', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_S.png', 1, 'EVOLUTION'),
(827, 'rng-ptbaccarat01', 'First Person Prosperity Tree Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(828, 'nxpkul2hgclallno', 'Speed Baccarat I', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_I.png', 1, 'EVOLUTION'),
(829, 'pdk523jney6upzft', 'Blackjack VIP 14', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_14.png', 1, 'EVOLUTION'),
(830, 'CrazyTime0000001', 'Crazy Time', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Crazy_Time.png', 1, 'EVOLUTION'),
(831, 'rctfyut2btsmfyyt', 'Blackjack VIP 30', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_30.png', 1, 'EVOLUTION'),
(832, 'qfyy4jm6rixfbllh', 'Speed VIP Blackjack L', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_L.png', 1, 'EVOLUTION'),
(833, 'vctlz20yfnmp1ylr', 'Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Roulette.png', 1, 'EVOLUTION'),
(834, 'zixzea8nrf1675oh', 'Baccarat Squeeze', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_Squeeze.png', 1, 'EVOLUTION'),
(835, 'teenpattitable01', 'Teen Patti', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Teen_Patti.png', 1, 'EVOLUTION'),
(836, 'peekbaccarat0001', 'Peek Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Peek_Baccarat.png', 1, 'EVOLUTION'),
(837, 'qfyzapjqrixfb3bx', 'Speed VIP Blackjack M', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_M.png', 1, 'EVOLUTION'),
(838, 'o4kyj7tgpwqqy4m4', 'Speed Baccarat Q', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_Q.png', 1, 'EVOLUTION'),
(839, 'FunkyTime0000001', 'Funky Time', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Funky_Time.png', 1, 'EVOLUTION'),
(840, 'RngDealNoDeal001', 'First Person Deal or No Deal', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(841, 'ESpeedBJ00000001', 'Evo Speed Blackjack 1', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Evo_Speed_Blackjack_1.png', 1, 'EVOLUTION'),
(842, 'qfyyxolocjhfau7y', 'Speed VIP Blackjack K', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_K.png', 1, 'EVOLUTION'),
(843, 'o7347okwaeasvy2y', 'Blackjack VIP 1', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_1.png', 1, 'EVOLUTION'),
(844, 'rep5aor7nyjl7qli', 'Speed Baccarat 6', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_6.png', 1, 'EVOLUTION'),
(845, 'o4kylkahpwqqy57w', 'Speed Baccarat R', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_R.png', 1, 'EVOLUTION'),
(846, 'XxxtremeLigh0001', 'XXXtreme Lightning Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(847, 'AndarBahar000001', 'Super Andar Bahar', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Super_Andar_Bahar.png', 1, 'EVOLUTION'),
(848, 'ndgv76kehfuaaeec', 'No Commission Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/No_Commission_Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(849, 'VPTable000000001', 'Video Poker', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Video_Poker.png', 1, 'EVOLUTION'),
(850, '60i0lcfx5wkkv3sy', 'Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_B.png', 1, 'EVOLUTION'),
(851, 'MegaBall00000001', 'Mega Ball', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Mega_Ball.png', 1, 'EVOLUTION'),
(852, 'rep5gu47nyjmafgt', 'Speed Baccarat 9', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_9.png', 1, 'EVOLUTION'),
(853, 'ocye5hmxbsoyrcii', 'No Commission Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/No_Commission_Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(854, 'pdk52e3rey6upyie', 'Blackjack VIP 13', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_13.png', 1, 'EVOLUTION'),
(855, 'rng-bj-standard0', 'First Person Blackjack', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(856, 'BonsaiBacc000002', 'Bonsai Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Bonsai_Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(857, 'DoubleBallRou001', 'Double Ball Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Double_Ball_Roulette.png', 1, 'EVOLUTION'),
(858, 'qsf7alptyvbqohva', 'Speed Baccarat 2', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_2.png', 1, 'EVOLUTION'),
(859, 'ps3t7nhskfe2fhkj', 'Blackjack VIP 18', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_18.png', 1, 'EVOLUTION'),
(860, 'lv2kzclunt2qnxo5', 'Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(861, 'HoldemTable00001', 'Casino Hold\'em', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Casino_Holdem.png', 1, 'EVOLUTION'),
(862, 'puu43e6c5uvrfikr', 'Emperor Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(863, 'wzg6kdkad1oe7m5k:5ou', 'French Roulette Gold', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/French_Roulette_Gold.png', 1, 'EVOLUTION'),
(864, 'SalPrivBac000009', 'Salon Privé Baccarat I', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_I.png', 1, 'EVOLUTION'),
(865, 'JapSpeedBac00003', 'Japanese Speed Baccarat C', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(866, 'qfyxcoqlrcfe44nj', 'Blackjack VIP 26', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_26.png', 1, 'EVOLUTION'),
(867, 'ovu5cwp54ccmymck', 'Speed Baccarat L', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_L.png', 1, 'EVOLUTION'),
(868, 'p34gzl44usw74wks', 'Salon Privé Baccarat F', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_F.png', 1, 'EVOLUTION'),
(869, 'ESpeedBJ00000003', 'Evo Speed Blackjack 3', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Evo_Speed_Blackjack_3.png', 1, 'EVOLUTION'),
(870, 'FanTan0000000001', 'Fan Tan', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Fan_Tan.png', 1, 'EVOLUTION'),
(871, 'BonsaiBacc000003', 'Bonsai Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Bonsai_Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(872, 'p2fzwauitc2msrik', 'Blackjack VIP 20', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_20.png', 1, 'EVOLUTION'),
(873, 'rep5ca4ynyjl7wdw', 'Speed Baccarat 7', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_7.png', 1, 'EVOLUTION'),
(874, 'o735efxfaeasv666', 'Blackjack VIP 5', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_5.png', 1, 'EVOLUTION'),
(875, 'ovu5dsly4ccmynil', 'Speed Baccarat M', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_M.png', 1, 'EVOLUTION'),
(876, 'oytmvb9m1zysmc44', 'Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_A.png', 1, 'EVOLUTION'),
(877, 'CashOrCrash00001', 'Cash or Crash', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Cash_or_Crash.png', 1, 'EVOLUTION'),
(878, 'rngbaccarat00000', 'First Person Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(879, 'LightningBac0001', 'Lightning Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Lightning_Baccarat.png', 1, 'EVOLUTION'),
(880, 'JapBJ00000000006', 'Japanese Speed Blackjack F', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(881, 'q25awuwygsy3lvnj', 'Korean Speed Baccarat D', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_D.png', 1, 'EVOLUTION'),
(882, 'ps3uijuskfe2f3cj', 'Speed VIP Blackjack G', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_G.png', 1, 'EVOLUTION'),
(883, 'qsf7bpfvyvbqolwp', 'Speed Baccarat 3', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_3.png', 1, 'EVOLUTION'),
(884, 'onokyd4wn7uekbjx', 'Korean Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(885, 'SpeedBlackjack17', 'Speed VIP Blackjack Q', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(886, 'TopDice000000001', 'Football Studio Dice', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(887, 'pctte34dt6bqbtps', 'Salon Privé Baccarat E', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_E.png', 1, 'EVOLUTION'),
(888, 'k2oswnib7jjaaznw', 'Baccarat Control Squeeze', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_Control_Squeeze.png', 1, 'EVOLUTION'),
(889, 'gwbaccarat000001', 'Golden Wealth Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Golden_Wealth_Baccarat.png', 1, 'EVOLUTION'),
(890, 'rctf2h7wbtsmf7rs', 'Blackjack VIP 31', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_31.png', 1, 'EVOLUTION'),
(891, 'qsf65xtoyvbqoaop', 'Speed Baccarat 1', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_1.png', 1, 'EVOLUTION'),
(892, 'ovu5fzje4ccmyqnr', 'Speed Baccarat P', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_P.png', 1, 'EVOLUTION'),
(893, 'qgqrrnuqvltnvejx', 'Speed Baccarat V', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_V.png', 1, 'EVOLUTION'),
(894, 'rngXXXtremeLB001', 'First Person XXXtreme Lightning Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(895, 'TRPTable00000001', 'Triple Card Poker', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Triple_Card_Poker.png', 1, 'EVOLUTION'),
(896, 'SpeedBlackjack04', 'Speed VIP Blackjack D', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_D.png', 1, 'EVOLUTION'),
(897, 'ImperialQuest001', 'Imperial Quest', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Imperial_Quest.png', 1, 'EVOLUTION'),
(898, 'SuperSicBo000001', 'Super Sic Bo', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Super_Sic_Bo.png', 1, 'EVOLUTION'),
(899, 'wzg6kdkad1oe7m5k', 'VIP Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/VIP_Roulette.png', 1, 'EVOLUTION'),
(900, 'rng-dreamcatcher', 'First Person Dream Catcher', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(901, 'ps3uhj7gteskex37', 'Speed VIP Blackjack F', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_F.png', 1, 'EVOLUTION'),
(902, 'rfbo6mhpdgyqbpay', 'Emperor Bac Bo', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Bac_Bo.png', 1, 'EVOLUTION'),
(903, 'TopCard000000001', 'Football Studio', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(904, 'SalPrivBac000012', 'Salon Privé Baccarat L', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_L.png', 1, 'EVOLUTION'),
(905, 'ovu5fbxm4ccmypmb', 'Speed Baccarat O', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_O.png', 1, 'EVOLUTION'),
(906, 'dealnodeal000001', 'Deal or No Deal', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Deal_or_No_Deal.png', 1, 'EVOLUTION'),
(907, 'JapSpeedBac00006', 'Japanese Speed Baccarat F', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(908, 'o735fhvsaeaswamh', 'Blackjack VIP 6', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_6.png', 1, 'EVOLUTION'),
(909, 'nxpj4wumgclak2lx', 'Speed Baccarat H', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_H.png', 1, 'EVOLUTION'),
(910, 'ESpeedBJ00000002', 'Evo Speed Blackjack 2', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Evo_Speed_Blackjack_2.png', 1, 'EVOLUTION'),
(911, 'EmperorSB0000002', 'Emperor Sic Bo A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Sic_Bo_A.png', 1, 'EVOLUTION'),
(912, 'rng-rt-xxxtreme1', 'First Person XXXtreme Lightning Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(913, 'XXXtremeLB000001', 'XXXtreme Lightning Baccarat', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(914, 'ps3t7j4ykfe2fhdw', 'Blackjack VIP 17', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_17.png', 1, 'EVOLUTION'),
(915, 'GoldVaultRo00001', 'Gold Vault Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(916, 'ps3t7qv2teskeg4w', 'Blackjack VIP 19', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_19.png', 1, 'EVOLUTION'),
(917, 'MOWDream00000001', 'Dream Catcher', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Dream_Catcher.png', 1, 'EVOLUTION'),
(918, 'o735ggd5iwsswcz7', 'Blackjack VIP 7', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_7.png', 1, 'EVOLUTION'),
(919, 'SpeedBlackjack14', 'Speed VIP Blackjack N', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(920, 'mrfykemt5slanyi5', 'Infinite Blackjack', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Infinite_Blackjack.png', 1, 'EVOLUTION'),
(921, 'SpeedAutoRo00001', 'Speed Auto Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Auto_Roulette.png', 1, 'EVOLUTION'),
(922, 'SpeedBlackjack02', 'Speed VIP Blackjack B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_B.png', 1, 'EVOLUTION'),
(923, 'doasaloon0000001', 'Dead or Alive: Saloon', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(924, 'o735hfcqauecwjxp', 'Blackjack VIP 8', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_8.png', 1, 'EVOLUTION'),
(925, 'puu4yfymic3reudn', 'Emperor Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(926, 'rng-rt-european0', 'First Person Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(927, 'rng-rt-lightning', 'First Person Lightning Roulette', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(928, 'BacBo00000000001', 'Bac Bo', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Bac_Bo.png', 1, 'EVOLUTION'),
(929, 'pdk5yzyfjkgepoml', 'Blackjack VIP 11', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_11.png', 1, 'EVOLUTION'),
(930, 'p2f2zs26tc2mu7r5', 'Speed VIP Blackjack I', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_I.png', 1, 'EVOLUTION'),
(931, 'BonsaiBacc000001', 'Bonsai Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Bonsai_Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(932, 'p2f25gsom2tmwmpn', 'Speed VIP Blackjack J', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_J.png', 1, 'EVOLUTION'),
(933, 'LightningDice001', 'Lightning Dice', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Lightning_Dice.png', 1, 'EVOLUTION'),
(934, 'pdk5xfrkjkgepmlq', 'Blackjack VIP 9', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_9.png', 1, 'EVOLUTION'),
(935, 'rep5iuhinyjmalz4', 'Speed Baccarat 10', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_10.png', 1, 'EVOLUTION'),
(936, 'GonzoTM000000001', 'Gonzo\'s Treasure Map', 'http://192.168.15.99/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(937, 'CrazyCoinFlip001', 'Crazy Coin Flip', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Crazy_Coin_Flip.png', 1, 'EVOLUTION'),
(938, 'dgcasino', 'Dream Gaming Live', 'https://vedaimg.enjoycx.com/img/game/dg/dg.jpg', 1, 'DREAMGAMING'),
(939, 'dgcasino', 'DG Live', 'https://vedaimg.enjoycx.com/img/game/dg/dg.jpg', 1, 'DREAMGAMING'),
(940, 'wmcasino', 'Casino', 'https://vedaimg.enjoycx.com/img/game/wml/wm.jpg', 1, 'WMLIVE'),
(941, '0', 'Lobby', 'https://thumbnails.honorlink.org/AsiaGaming/0.jpg', 1, 'ASIAGAMING'),
(942, 'B001', 'AGQ Baccarat B1', 'https://thumbnails.honorlink.org/AsiaGaming/B001.jpg', 1, 'ASIAGAMING'),
(943, 'B002', 'AGQ Baccarat B2', 'https://thumbnails.honorlink.org/AsiaGaming/B002.jpg', 1, 'ASIAGAMING'),
(944, 'B003', 'AGQ Baccarat B3', 'https://thumbnails.honorlink.org/AsiaGaming/B003.jpg', 1, 'ASIAGAMING'),
(945, 'B004', 'AGQ Baccarat B4', 'https://thumbnails.honorlink.org/AsiaGaming/B004.jpg', 1, 'ASIAGAMING'),
(946, 'B005', 'AGQ Baccarat B5', 'https://thumbnails.honorlink.org/AsiaGaming/B005.jpg', 1, 'ASIAGAMING'),
(947, 'B006', 'AGQ Baccarat B6', 'https://thumbnails.honorlink.org/AsiaGaming/B006.jpg', 1, 'ASIAGAMING'),
(948, 'B022', 'AGQ BullBull B22', 'https://thumbnails.honorlink.org/AsiaGaming/B022.jpg', 1, 'ASIAGAMING'),
(949, 'D001', 'EMA Roulette D1', 'https://thumbnails.honorlink.org/AsiaGaming/D001.jpg', 1, 'ASIAGAMING'),
(950, 'D051', 'EMA Baccarat D51', 'https://thumbnails.honorlink.org/AsiaGaming/D051.jpg', 1, 'ASIAGAMING'),
(951, 'D052', 'EMA Baccarat D52', 'https://thumbnails.honorlink.org/AsiaGaming/D052.jpg', 1, 'ASIAGAMING'),
(952, 'D053', 'EMA Baccarat D53', 'https://thumbnails.honorlink.org/AsiaGaming/D053.jpg', 1, 'ASIAGAMING'),
(953, 'D054', 'EMA Baccarat D54', 'https://thumbnails.honorlink.org/AsiaGaming/D054.jpg', 1, 'ASIAGAMING'),
(954, 'D055', 'EMA Baccarat D55', 'https://thumbnails.honorlink.org/AsiaGaming/D055.jpg', 1, 'ASIAGAMING'),
(955, 'D056', 'EMA Baccarat D56', 'https://thumbnails.honorlink.org/AsiaGaming/D056.jpg', 1, 'ASIAGAMING'),
(956, 'D057', 'EMA Baccarat D57', 'https://thumbnails.honorlink.org/AsiaGaming/D057.jpg', 1, 'ASIAGAMING'),
(957, 'D058', 'EMA Baccarat D58', 'https://thumbnails.honorlink.org/AsiaGaming/D058.jpg', 1, 'ASIAGAMING'),
(958, 'D059', 'EMA Baccarat D59', 'https://thumbnails.honorlink.org/AsiaGaming/D059.jpg', 1, 'ASIAGAMING'),
(959, 'D060', 'EMA Dragon Tiger D60', 'https://thumbnails.honorlink.org/AsiaGaming/D060.jpg', 1, 'ASIAGAMING'),
(960, 'E101', 'Blockchain Baccarat E101', 'https://thumbnails.honorlink.org/AsiaGaming/E101.jpg', 1, 'ASIAGAMING'),
(961, 'E102', 'Blockchain Baccarat E102', 'https://thumbnails.honorlink.org/AsiaGaming/E102.jpg', 1, 'ASIAGAMING'),
(962, 'E103', 'Blockchain Baccarat E103', 'https://thumbnails.honorlink.org/AsiaGaming/E103.jpg', 1, 'ASIAGAMING'),
(963, 'E104', 'Blockchain Baccarat E104', 'https://thumbnails.honorlink.org/AsiaGaming/E104.jpg', 1, 'ASIAGAMING'),
(964, 'E105', 'Blockchain Baccarat E105', 'https://thumbnails.honorlink.org/AsiaGaming/E105.jpg', 1, 'ASIAGAMING'),
(965, 'E106', 'Blockchain Baccarat E106', 'https://thumbnails.honorlink.org/AsiaGaming/E106.jpg', 1, 'ASIAGAMING'),
(966, 'E107', 'Blockchain Baccarat E107', 'https://thumbnails.honorlink.org/AsiaGaming/E107.jpg', 1, 'ASIAGAMING'),
(967, 'E108', 'Blockchain Baccarat E108', 'https://thumbnails.honorlink.org/AsiaGaming/E108.jpg', 1, 'ASIAGAMING'),
(968, 'E109', 'Blockchain Baccarat E109', 'https://thumbnails.honorlink.org/AsiaGaming/E109.jpg', 1, 'ASIAGAMING'),
(969, 'E110', 'Blockchain Baccarat E110', 'https://thumbnails.honorlink.org/AsiaGaming/E110.jpg', 1, 'ASIAGAMING'),
(970, 'E201', 'Blockchain Dragon Tiger E201', 'https://thumbnails.honorlink.org/AsiaGaming/E201.jpg', 1, 'ASIAGAMING'),
(971, 'E202', 'Blockchain Dragon Tiger E202', 'https://thumbnails.honorlink.org/AsiaGaming/E202.jpg', 1, 'ASIAGAMING'),
(972, 'E601', 'Blockchain Win Three Cards E601', 'https://thumbnails.honorlink.org/AsiaGaming/E601.jpg', 1, 'ASIAGAMING'),
(973, 'E602', 'Blockchain Win Three Cards E602', 'https://thumbnails.honorlink.org/AsiaGaming/E602.jpg', 1, 'ASIAGAMING'),
(974, 'M053', 'EMA Baccarat M53', 'https://thumbnails.honorlink.org/AsiaGaming/M053.jpg', 1, 'ASIAGAMING'),
(975, 'M054', 'EMA Baccarat M54', 'https://thumbnails.honorlink.org/AsiaGaming/M054.jpg', 1, 'ASIAGAMING'),
(976, 'M055', 'EMA Baccarat M55', 'https://thumbnails.honorlink.org/AsiaGaming/M055.jpg', 1, 'ASIAGAMING'),
(977, 'M056', 'EMA Baccarat M56', 'https://thumbnails.honorlink.org/AsiaGaming/M056.jpg', 1, 'ASIAGAMING'),
(978, 'N006', 'CGY Baccarat N6', 'https://thumbnails.honorlink.org/AsiaGaming/N006.jpg', 1, 'ASIAGAMING'),
(979, 'N007', 'CGY Baccarat N7', 'https://thumbnails.honorlink.org/AsiaGaming/N007.jpg', 1, 'ASIAGAMING'),
(980, 'N008', 'CGY Baccarat N8', 'https://thumbnails.honorlink.org/AsiaGaming/N008.jpg', 1, 'ASIAGAMING'),
(981, 'N009', 'CGY Baccarat N9', 'https://thumbnails.honorlink.org/AsiaGaming/N009.jpg', 1, 'ASIAGAMING'),
(982, 'N010', 'CGY Baccarat N10', 'https://thumbnails.honorlink.org/AsiaGaming/N010.jpg', 1, 'ASIAGAMING'),
(983, 'N011', 'CGY Baccarat N11', 'https://thumbnails.honorlink.org/AsiaGaming/N011.jpg', 1, 'ASIAGAMING'),
(984, 'N012', 'CGY Baccarat N12', 'https://thumbnails.honorlink.org/AsiaGaming/N012.jpg', 1, 'ASIAGAMING'),
(985, 'N013', 'CGY Baccarat N13', 'https://thumbnails.honorlink.org/AsiaGaming/N013.jpg', 1, 'ASIAGAMING'),
(986, 'N015', 'CGY Baccarat N15', 'https://thumbnails.honorlink.org/AsiaGaming/N015.jpg', 1, 'ASIAGAMING'),
(987, 'N016', 'CGY Baccarat N16', 'https://thumbnails.honorlink.org/AsiaGaming/N016.jpg', 1, 'ASIAGAMING'),
(988, 'N017', 'CGY Baccarat N17', 'https://thumbnails.honorlink.org/AsiaGaming/N017.jpg', 1, 'ASIAGAMING'),
(989, 'N018', 'CGY Baccarat N18', 'https://thumbnails.honorlink.org/AsiaGaming/N018.jpg', 1, 'ASIAGAMING'),
(990, 'N019', 'CGY Baccarat N19', 'https://thumbnails.honorlink.org/AsiaGaming/N019.jpg', 1, 'ASIAGAMING'),
(991, 'N020', 'CGY Dragon Tiger N20', 'https://thumbnails.honorlink.org/AsiaGaming/N020.jpg', 1, 'ASIAGAMING'),
(992, 'N021', 'CGY Win Three Cards N21', 'https://thumbnails.honorlink.org/AsiaGaming/N021.jpg', 1, 'ASIAGAMING'),
(993, 'N022', 'CGY BullBull N22', 'https://thumbnails.honorlink.org/AsiaGaming/N022.jpg', 1, 'ASIAGAMING'),
(994, 'N023', 'CGY BullBull N23', 'https://thumbnails.honorlink.org/AsiaGaming/N023.jpg', 1, 'ASIAGAMING'),
(995, 'N024', 'CGY Three Face N24', 'https://thumbnails.honorlink.org/AsiaGaming/N024.jpg', 1, 'ASIAGAMING'),
(996, 'N026', 'CGY Sicbo N26', 'https://thumbnails.honorlink.org/AsiaGaming/N026.jpg', 1, 'ASIAGAMING'),
(997, 'M051', 'EMA Baccarat M51', 'https://thumbnails.honorlink.org/AsiaGaming/M051.jpg', 1, 'ASIAGAMING'),
(998, 'M052', 'EMA Baccarat M52', 'https://thumbnails.honorlink.org/AsiaGaming/M052.jpg', 1, 'ASIAGAMING'),
(999, 'M057', 'EMA Baccarat M57', 'https://thumbnails.honorlink.org/AsiaGaming/M057.jpg', 1, 'ASIAGAMING'),
(1000, 'M058', 'EMA Baccarat M58', 'https://thumbnails.honorlink.org/AsiaGaming/M058.jpg', 1, 'ASIAGAMING'),
(1001, 'M059', 'EMA Baccarat M59', 'https://thumbnails.honorlink.org/AsiaGaming/M059.jpg', 1, 'ASIAGAMING'),
(1002, 'M060', 'EMA Dragon Tiger M60', 'https://thumbnails.honorlink.org/AsiaGaming/M060.jpg', 1, 'ASIAGAMING'),
(1003, 'E711', 'Blockchain Baccarat E711', 'https://thumbnails.honorlink.org/AsiaGaming/E711.jpg', 1, 'ASIAGAMING'),
(1004, 'E712', 'Blockchain Baccarat E712', 'https://thumbnails.honorlink.org/AsiaGaming/E712.jpg', 1, 'ASIAGAMING'),
(1005, 'E702', 'Blockchain European Roulette E702', 'https://thumbnails.honorlink.org/AsiaGaming/E702.jpg', 1, 'ASIAGAMING'),
(1006, 'E301', 'Blockchain BullBull E301', 'https://thumbnails.honorlink.org/AsiaGaming/E301.jpg', 1, 'ASIAGAMING'),
(1007, 'E302', 'Blockchain BullBull E302', 'https://thumbnails.honorlink.org/AsiaGaming/E302.jpg', 1, 'ASIAGAMING'),
(1008, 'E501', 'Blockchain Three Face E501', 'https://thumbnails.honorlink.org/AsiaGaming/E501.jpg', 1, 'ASIAGAMING'),
(1009, 'E502', 'Blockchain Three Face E502', 'https://thumbnails.honorlink.org/AsiaGaming/E502.jpg', 1, 'ASIAGAMING'),
(1010, 'bota', 'BOTA', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/bota/bota_logo.png', 1, 'BOTA'),
(1011, '401', 'Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/401.png', 1, 'PRAGMATICLIVE'),
(1012, '404', 'Baccarat 2', 'https://api-2103.ppgames.net/game_pic/square/200/404.png', 1, 'PRAGMATICLIVE'),
(1013, '411', 'Baccarat 5', 'https://api-2103.ppgames.net/game_pic/square/200/411.png', 1, 'PRAGMATICLIVE'),
(1014, '413', 'Baccarat 6', 'https://api-2103.ppgames.net/game_pic/square/200/413.png', 1, 'PRAGMATICLIVE'),
(1015, '201', 'Roulette 2', 'https://api-2103.ppgames.net/game_pic/square/200/201.png', 1, 'PRAGMATICLIVE'),
(1016, '402', 'Speed Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/402.png', 1, 'PRAGMATICLIVE'),
(1017, '403', 'Speed Baccarat 2', 'https://api-2103.ppgames.net/game_pic/square/200/403.png', 1, 'PRAGMATICLIVE'),
(1018, '412', 'Speed Baccarat 3', 'https://api-2103.ppgames.net/game_pic/square/200/412.png', 1, 'PRAGMATICLIVE'),
(1019, '414', 'Speed Baccarat 5', 'https://api-2103.ppgames.net/game_pic/square/200/414.png', 1, 'PRAGMATICLIVE'),
(1020, '108', 'Live - Dragon Tiger', 'https://api-sg0.ppgames.net/game_pic/rec/325/108.png', 1, 'PRAGMATICLIVE'),
(1021, '101', 'Live - Lobby', 'https://api-sg0.ppgames.net/game_pic/rec/325/101.png', 1, 'PRAGMATICLIVE'),
(1022, '102', 'Live - Lobby Roulette', 'https://api-sg0.ppgames.net/game_pic/rec/325/102.png', 1, 'PRAGMATICLIVE'),
(1023, '1024', 'Live - Andar Bahar', 'https://api-sg0.ppgames.net/game_pic/rec/325/1024.png', 1, 'PRAGMATICLIVE'),
(1024, '103', 'Live - Lobby BJ', 'https://api-sg0.ppgames.net/game_pic/rec/325/103.png', 1, 'PRAGMATICLIVE'),
(1025, '104', 'Live - Lobby Baccarat', 'https://api-sg0.ppgames.net/game_pic/rec/325/104.png', 1, 'PRAGMATICLIVE'),
(1026, '105', 'Live - GAMESHOWS', 'https://api-sg0.ppgames.net/game_pic/rec/325/105.png', 1, 'PRAGMATICLIVE'),
(1027, '107', 'Live - Sic Bo', 'https://api-sg0.ppgames.net/game_pic/rec/325/107.png', 1, 'PRAGMATICLIVE'),
(1028, '109', 'Live - Sic Bo & Dragon Tiger', 'https://api-sg0.ppgames.net/game_pic/rec/325/109.png', 1, 'PRAGMATICLIVE'),
(1029, '110', 'Live - D&W', 'https://api-sg0.ppgames.net/game_pic/rec/325/110.png', 1, 'PRAGMATICLIVE'),
(1030, '1101', 'Live - Sweet Bonanza CandyLand', 'https://api-sg0.ppgames.net/game_pic/rec/325/1101.png', 1, 'PRAGMATICLIVE'),
(1031, '111', 'Live - Other Promos', 'https://api-sg0.ppgames.net/game_pic/rec/325/111.png', 1, 'PRAGMATICLIVE'),
(1032, '203', 'Speed Roulette 1', 'https://api-2103.ppgames.net/game_pic/square/200/203.png', 1, 'PRAGMATICLIVE'),
(1033, '204', 'Live - Mega Roulette', 'https://api-sg0.ppgames.net/game_pic/rec/325/204.png', 1, 'PRAGMATICLIVE'),
(1034, '206', 'Roulette 3 - Macao', 'https://api-2103.ppgames.net/game_pic/square/200/206.png', 1, 'PRAGMATICLIVE'),
(1035, '221', 'Roulette 4 - Russian', 'https://api-2103.ppgames.net/game_pic/square/200/221.png', 1, 'PRAGMATICLIVE'),
(1036, '222', 'Roulette 5 - German', 'https://api-2103.ppgames.net/game_pic/square/200/222.png', 1, 'PRAGMATICLIVE'),
(1037, '223', 'Roulette 7 - Italian', 'https://api-2103.ppgames.net/game_pic/square/200/223.png', 1, 'PRAGMATICLIVE'),
(1038, '224', 'Roulette 6 - Turkish', 'https://api-2103.ppgames.net/game_pic/square/200/224.png', 1, 'PRAGMATICLIVE'),
(1039, '225', 'Auto-Roulette 1', 'https://api-2103.ppgames.net/game_pic/square/200/225.png', 1, 'PRAGMATICLIVE'),
(1040, '227', 'Roulette 1 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/227.png', 1, 'PRAGMATICLIVE'),
(1041, '229', 'Live - Roulette 8 - Indian', 'https://api-sg0.ppgames.net/game_pic/rec/325/229.png', 1, 'PRAGMATICLIVE'),
(1042, '230', 'Live - Roulette 10 - Ruby', 'https://api-sg0.ppgames.net/game_pic/rec/325/230.png', 1, 'PRAGMATICLIVE'),
(1043, '301', 'Blackjack 11', 'https://api-2103.ppgames.net/game_pic/square/200/301.png', 1, 'PRAGMATICLIVE'),
(1044, '302', 'Blackjack 12', 'https://api-2103.ppgames.net/game_pic/square/200/302.png', 1, 'PRAGMATICLIVE'),
(1045, '303', 'Blackjack 14', 'https://api-2103.ppgames.net/game_pic/square/200/303.png', 1, 'PRAGMATICLIVE'),
(1046, '304', 'Blackjack 15', 'https://api-2103.ppgames.net/game_pic/square/200/304.png', 1, 'PRAGMATICLIVE'),
(1047, '305', 'Blackjack 16', 'https://api-2103.ppgames.net/game_pic/square/200/305.png', 1, 'PRAGMATICLIVE'),
(1048, '405', 'Live - Speed Baccarat 14', 'https://api-sg0.ppgames.net/game_pic/rec/325/405.png', 1, 'PRAGMATICLIVE'),
(1049, '415', 'Live - Speed Baccarat 6', 'https://api-sg0.ppgames.net/game_pic/rec/325/415.png', 1, 'PRAGMATICLIVE'),
(1050, '421', 'Live - Speed Baccarat 12', 'https://api-sg0.ppgames.net/game_pic/rec/325/421.png', 1, 'PRAGMATICLIVE'),
(1051, '422', 'Live - Baccarat 3', 'https://api-sg0.ppgames.net/game_pic/rec/325/422.png', 1, 'PRAGMATICLIVE'),
(1052, '423', 'Live - Baccarat 9', 'https://api-sg0.ppgames.net/game_pic/rec/325/423.png', 1, 'PRAGMATICLIVE'),
(1053, '424', 'Live - Speed Baccarat 11', 'https://api-sg0.ppgames.net/game_pic/rec/325/424.png', 1, 'PRAGMATICLIVE'),
(1054, '425', 'Live - Baccarat 7', 'https://api-sg0.ppgames.net/game_pic/rec/325/425.png', 1, 'PRAGMATICLIVE'),
(1055, '426', 'Live - Baccarat 8', 'https://api-sg0.ppgames.net/game_pic/rec/325/426.png', 1, 'PRAGMATICLIVE'),
(1056, '427', 'Live - Speed Baccarat 15', 'https://api-sg0.ppgames.net/game_pic/rec/325/427.png', 1, 'PRAGMATICLIVE'),
(1057, '428', 'Live - Speed Baccarat 10', 'https://api-sg0.ppgames.net/game_pic/rec/325/428.png', 1, 'PRAGMATICLIVE'),
(1058, '429', 'Live - Speed Baccarat 16', 'https://api-sg0.ppgames.net/game_pic/rec/325/429.png', 1, 'PRAGMATICLIVE'),
(1059, '430', 'Live - Speed Baccarat 9', 'https://api-sg0.ppgames.net/game_pic/rec/325/430.png', 1, 'PRAGMATICLIVE'),
(1060, '431', 'Live - Speed Baccarat 7', 'https://api-sg0.ppgames.net/game_pic/rec/325/431.png', 1, 'PRAGMATICLIVE'),
(1061, '432', 'Live - Speed Baccarat 8', 'https://api-sg0.ppgames.net/game_pic/rec/325/432.png', 1, 'PRAGMATICLIVE'),
(1062, '437', 'Live - Speed Baccarat 17', 'https://api-sg0.ppgames.net/game_pic/rec/325/437.png', 1, 'PRAGMATICLIVE'),
(1063, '438', 'Live - Speed Baccarat 13', 'https://api-sg0.ppgames.net/game_pic/rec/325/438.png', 1, 'PRAGMATICLIVE'),
(1064, '511', 'Blackjack 3 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/511.png', 1, 'PRAGMATICLIVE'),
(1065, '512', 'Blackjack 6 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/512.png', 1, 'PRAGMATICLIVE'),
(1066, '513', 'Blackjack 7 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/513.png', 1, 'PRAGMATICLIVE'),
(1067, '514', 'Blackjack 4 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/514.png', 1, 'PRAGMATICLIVE'),
(1068, '515', 'Blackjack 1 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/515.png', 1, 'PRAGMATICLIVE'),
(1069, '516', 'Blackjack 9 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/516.png', 1, 'PRAGMATICLIVE'),
(1070, '517', 'Blackjack 10 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/517.png', 1, 'PRAGMATICLIVE'),
(1071, '518', 'Blackjack 5 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/518.png', 1, 'PRAGMATICLIVE'),
(1072, '519', 'Blackjack 2 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/519.png', 1, 'PRAGMATICLIVE'),
(1073, '520', 'Blackjack 8 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/520.png', 1, 'PRAGMATICLIVE'),
(1074, '545', 'Live - The Club Roulette', 'https://api-sg0.ppgames.net/game_pic/rec/325/545.png', 1, 'PRAGMATICLIVE'),
(1075, '701', 'Live - Mega Sic Bo', 'https://api-sg0.ppgames.net/game_pic/rec/325/701.png', 1, 'PRAGMATICLIVE'),
(1076, '801', 'Live - Mega Wheel', 'https://api-sg0.ppgames.net/game_pic/rec/325/801.png', 1, 'PRAGMATICLIVE'),
(1077, '233', 'Live - ROULETTE 12 – ROMANIAN', 'https://api-sg0.ppgames.net/game_pic/rec/325/233.png', 1, 'PRAGMATICLIVE'),
(1078, '235', 'Live - ROULETTE 11 – DUTCH', 'https://api-sg0.ppgames.net/game_pic/rec/325/235.png', 1, 'PRAGMATICLIVE'),
(1079, '433', 'Live - Super 8 Baccarat', 'https://api-sg0.ppgames.net/game_pic/rec/325/433.png', 1, 'PRAGMATICLIVE'),
(1080, '434', 'Live - Fortune 6 Baccarat', 'https://api-sg0.ppgames.net/game_pic/rec/325/434.png', 1, 'PRAGMATICLIVE'),
(1081, '1302', 'Live - Spaceman', 'https://api-sg0.ppgames.net/game_pic/rec/325/1301.png', 1, 'PRAGMATICLIVE'),
(1082, '1401', 'Live - BOOM CITY', 'https://api-sg13.ppgames.net/game_pic/square/200/1401.png', 1, 'PRAGMATICLIVE'),
(1083, '1001', 'Live - Dragon Tiger', 'https://api-sg0.ppgames.net/game_pic/rec/325/108.png', 1, 'PRAGMATICLIVE'),
(1084, 'pp3fish', 'Fishing King', 'https://api-sg13.ppgames.net/game_pic/square/200/pp3fish.png', 1, 'PRAGMATICLIVE'),
(1085, 'pp4fortune', 'Fortune Fishing', 'https://api-sg13.ppgames.net/game_pic/square/200/pp4fortune.png', 1, 'PRAGMATICLIVE'),
(1086, '234', 'Live - Roulette 14 - Spanish', 'https://api-sg13.ppgames.net/game_pic/square/200/234.png', 1, 'PRAGMATICLIVE'),
(1087, '240', 'Live - PowerUp Roulette', 'https://api-sg13.ppgames.net/game_pic/square/200/240.png', 1, 'PRAGMATICLIVE'),
(1088, '205', 'Live - Speed Roulette 2', 'https://api-sg13.ppgames.net/game_pic/square/200/205.png', 1, 'PRAGMATICLIVE'),
(1089, '435', 'Live - No Comm Speed Baccarat 1', 'https://api-sg13.ppgames.net/game_pic/square/200/435.png', 1, 'PRAGMATICLIVE'),
(1090, '439', 'Live - No Comm Speed Baccarat 2', 'https://api-sg13.ppgames.net/game_pic/square/200/439.png', 1, 'PRAGMATICLIVE'),
(1091, '436', 'Live - No Comm Baccarat 1', 'https://api-sg13.ppgames.net/game_pic/square/200/436.png', 1, 'PRAGMATICLIVE'),
(1092, '114', 'Live - Asian Games', 'https://api-sg13.ppgames.net/game_pic/square/200/114.png', 1, 'PRAGMATICLIVE'),
(1093, '441', 'Live - Speed Baccarat 1 - Korean', 'https://api-sg13.ppgames.net/game_pic/square/200/441.png', 1, 'PRAGMATICLIVE'),
(1094, '441', 'Live - speed Baccarat 16 Korean', 'https://api-sg70.ppgames.net/game_pic/square/200/441.png', 1, 'PRAGMATICLIVE'),
(1095, '422f', 'Live - Baccarat 3', 'https://api-sg0.ppgames.net/game_pic/rec/325/422.png', 1, 'PRAGMATICLIVE'),
(1096, '426b', 'Live - Baccarat 8', 'https://api-sg0.ppgames.net/game_pic/rec/325/426.png', 1, 'PRAGMATICLIVE'),
(1097, '230a20', 'Live - Roulette 10 - Ruby', 'https://api-sg0.ppgames.net/game_pic/rec/325/230.png', 1, 'PRAGMATICLIVE'),
(1098, '424f', 'Live - Speed Baccarat 11', 'https://api-sg0.ppgames.net/game_pic/rec/325/424.png', 1, 'PRAGMATICLIVE'),
(1099, '421f', 'Live - Speed Baccarat 12', 'https://api-sg0.ppgames.net/game_pic/rec/325/421.png', 1, 'PRAGMATICLIVE'),
(1100, '438f', 'Live - Speed Baccarat 13', 'https://api-sg0.ppgames.net/game_pic/rec/325/438.png', 1, 'PRAGMATICLIVE'),
(1101, '427b', 'Live - Speed Baccarat 15', 'https://api-sg0.ppgames.net/game_pic/rec/325/427.png', 1, 'PRAGMATICLIVE'),
(1102, '449', 'Live - SPEED BACCARAT 2 KOREAN', 'https://api-2103.ppgames.net/game_pic/square/200/449.png', 1, 'PRAGMATICLIVE'),
(1103, '442', 'Live - Mega Baccarat', 'https://api-2103.ppgames.net/game_pic/square/200/442.png', 1, 'PRAGMATICLIVE'),
(1104, '226', 'Live - Speed Auto-Roulette 1', 'https://api-2103.ppgames.net/game_pic/square/200/226.png', 1, 'PRAGMATICLIVE'),
(1105, '1302', 'Spaceman', 'https://api-2103.ppgames.net/game_pic/square/200/1302.png', 1, 'PRAGMATICLIVE'),
(1106, '801', 'Mega Wheel', 'https://api-2103.ppgames.net/game_pic/square/200/801.png', 1, 'PRAGMATICLIVE'),
(1107, '701', 'Mega Sic Bo', 'https://api-2103.ppgames.net/game_pic/square/200/701.png', 1, 'PRAGMATICLIVE'),
(1108, '1101', 'Sweet Bonanza CandyLand', 'https://api-2103.ppgames.net/game_pic/square/200/1101.png', 1, 'PRAGMATICLIVE'),
(1109, '204', 'Mega Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/204.png', 1, 'PRAGMATICLIVE'),
(1110, '435', 'No Comm Speed Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/435.png', 1, 'PRAGMATICLIVE'),
(1111, '436', 'No Comm Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/436.png', 1, 'PRAGMATICLIVE'),
(1112, '441', 'Speed Baccarat 1 - Korean', 'https://api-2103.ppgames.net/game_pic/square/200/441.png', 1, 'PRAGMATICLIVE'),
(1113, '449', 'Speed Baccarat 2 - Korean', 'https://api-2103.ppgames.net/game_pic/square/200/449.png', 1, 'PRAGMATICLIVE'),
(1114, '1001', 'Dragon Tiger', 'https://api-2103.ppgames.net/game_pic/square/200/1001.png', 1, 'PRAGMATICLIVE'),
(1115, '240', 'PowerUP Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/240.png', 1, 'PRAGMATICLIVE'),
(1116, '434', 'Fortune 6 Baccarat', 'https://api-2103.ppgames.net/game_pic/square/200/434.png', 1, 'PRAGMATICLIVE'),
(1117, '433', 'Super 8 Baccarat', 'https://api-2103.ppgames.net/game_pic/square/200/433.png', 1, 'PRAGMATICLIVE'),
(1118, '1401', 'Boom City', 'https://api-2103.ppgames.net/game_pic/square/200/1401.png', 1, 'PRAGMATICLIVE'),
(1119, '415', 'Speed Baccarat 6', 'https://api-2103.ppgames.net/game_pic/square/200/415.png', 1, 'PRAGMATICLIVE'),
(1120, '431', 'Speed Baccarat 7', 'https://api-2103.ppgames.net/game_pic/square/200/431.png', 1, 'PRAGMATICLIVE'),
(1121, '432', 'Speed Baccarat 8', 'https://api-2103.ppgames.net/game_pic/square/200/432.png', 1, 'PRAGMATICLIVE'),
(1122, '430', 'Speed Baccarat 9', 'https://api-2103.ppgames.net/game_pic/square/200/430.png', 1, 'PRAGMATICLIVE'),
(1123, '428', 'Speed Baccarat 10', 'https://api-2103.ppgames.net/game_pic/square/200/428.png', 1, 'PRAGMATICLIVE'),
(1124, '424', 'Speed Baccarat 11', 'https://api-2103.ppgames.net/game_pic/square/200/424.png', 1, 'PRAGMATICLIVE'),
(1125, '421', 'Speed Baccarat 12', 'https://api-2103.ppgames.net/game_pic/square/200/421.png', 1, 'PRAGMATICLIVE'),
(1126, '438', 'Speed Baccarat 13', 'https://api-2103.ppgames.net/game_pic/square/200/438.png', 1, 'PRAGMATICLIVE'),
(1127, '405', 'Speed Baccarat 14', 'https://api-2103.ppgames.net/game_pic/square/200/405.png', 1, 'PRAGMATICLIVE'),
(1128, '427', 'Speed Baccarat 15', 'https://api-2103.ppgames.net/game_pic/square/200/427.png', 1, 'PRAGMATICLIVE'),
(1129, '439', 'No Comm Speed Baccarat 2', 'https://api-2103.ppgames.net/game_pic/square/200/439.png', 1, 'PRAGMATICLIVE'),
(1130, '422', 'Baccarat 3', 'https://api-2103.ppgames.net/game_pic/square/200/422.png', 1, 'PRAGMATICLIVE'),
(1131, '425', 'Baccarat 7', 'https://api-2103.ppgames.net/game_pic/square/200/425.png', 1, 'PRAGMATICLIVE'),
(1132, '426', 'Baccarat 8', 'https://api-2103.ppgames.net/game_pic/square/200/426.png', 1, 'PRAGMATICLIVE'),
(1133, '545', 'Roulette 9 - The Club', 'https://api-2103.ppgames.net/game_pic/square/200/545.png', 1, 'PRAGMATICLIVE'),
(1134, '205', 'Speed Roulette 2', 'https://api-2103.ppgames.net/game_pic/square/200/205.png', 1, 'PRAGMATICLIVE'),
(1135, '230', 'Roulette 10 - Ruby', 'https://api-2103.ppgames.net/game_pic/square/200/230.png', 1, 'PRAGMATICLIVE'),
(1136, '229', 'Roulette 8 - Indian', 'https://api-2103.ppgames.net/game_pic/square/200/229.png', 1, 'PRAGMATICLIVE'),
(1137, '233', 'Roulette 12 - Romanian', 'https://api-2103.ppgames.net/game_pic/square/200/233.png', 1, 'PRAGMATICLIVE'),
(1138, '235', 'Roulette 11 - Dutch', 'https://api-2103.ppgames.net/game_pic/square/200/235.png', 1, 'PRAGMATICLIVE'),
(1139, '234', 'Roulette 14 - Spanish', 'https://api-2103.ppgames.net/game_pic/square/200/234.png', 1, 'PRAGMATICLIVE'),
(1140, '1024', 'Andar Bahar', 'https://api-2103.ppgames.net/game_pic/square/200/1024.png', 1, 'PRAGMATICLIVE'),
(1141, '901', 'ONE Blackjack', 'https://api-2103.ppgames.net/game_pic/square/200/901.png', 1, 'PRAGMATICLIVE'),
(1142, '902', 'BetVictor ONE Blackjack', 'https://api-2103.ppgames.net/game_pic/square/200/902.png', 1, 'PRAGMATICLIVE'),
(1143, '111', 'Other Promos', 'https://api-2103.ppgames.net/game_pic/square/200/111.png', 1, 'PRAGMATICLIVE'),
(1144, '104', 'Baccarat Lobby', 'https://api-2103.ppgames.net/game_pic/square/200/104.png', 1, 'PRAGMATICLIVE'),
(1145, '102', 'Roulette Lobby', 'https://api-2103.ppgames.net/game_pic/square/200/102.png', 1, 'PRAGMATICLIVE'),
(1146, '107', 'Sic Bo', 'https://api-2103.ppgames.net/game_pic/square/200/107.png', 1, 'PRAGMATICLIVE'),
(1147, '108', 'Dragon Tiger', 'https://api-2103.ppgames.net/game_pic/square/200/108.png', 1, 'PRAGMATICLIVE'),
(1148, '105', 'Gameshows', 'https://api-2103.ppgames.net/game_pic/square/200/105.png', 1, 'PRAGMATICLIVE'),
(1149, '103', 'Blackjack Lobby', 'https://api-2103.ppgames.net/game_pic/square/200/103.png', 1, 'PRAGMATICLIVE'),
(1150, '109', 'Sic Bo & Dragon Tiger', 'https://api-2103.ppgames.net/game_pic/square/200/109.png', 1, 'PRAGMATICLIVE'),
(1151, '110', 'D&W', 'https://api-2103.ppgames.net/game_pic/square/200/110.png', 1, 'PRAGMATICLIVE'),
(1152, '114', 'Asian Games', 'https://api-2103.ppgames.net/game_pic/square/200/114.png', 1, 'PRAGMATICLIVE'),
(1153, '101', 'Live Casino Lobby', 'https://api-2103.ppgames.net/game_pic/square/200/101.png', 1, 'PRAGMATICLIVE'),
(1154, '442', 'Mega Baccarat', 'https://api-2103.ppgames.net/game_pic/square/200/442.png', 1, 'PRAGMATICLIVE'),
(1155, '226', 'Speed Auto-Roulette 1', 'https://api-2103.ppgames.net/game_pic/square/200/226.png', 1, 'PRAGMATICLIVE'),
(1156, '1601', 'Snake & Ladders Live', 'https://api-2103.ppgames.net/game_pic/square/200/1601.png', 1, 'PRAGMATICLIVE'),
(1157, '210', 'Auto Mega Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/210.png', 1, 'PRAGMATICLIVE'),
(1158, '1501', 'Vegas Ball Bonanza', 'https://api-2103.ppgames.net/game_pic/square/200/1501.png', 1, 'PRAGMATICLIVE'),
(1159, '545', 'VIP Roulette - The Club', 'https://api-2103.ppgames.net/game_pic/square/200/545.png', 1, 'PRAGMATICLIVE'),
(1160, '721', 'Privé Lounge 1', 'https://api-2103.ppgames.net/game_pic/square/200/721.png', 1, 'PRAGMATICLIVE'),
(1161, '722', 'Privé Lounge 2', 'https://api-2103.ppgames.net/game_pic/square/200/722.png', 1, 'PRAGMATICLIVE'),
(1162, '723', 'Privé Lounge 3', 'https://api-2103.ppgames.net/game_pic/square/200/723.png', 1, 'PRAGMATICLIVE'),
(1163, '724', 'Privé Lounge 4', 'https://api-2103.ppgames.net/game_pic/square/200/724.png', 1, 'PRAGMATICLIVE'),
(1164, '725', 'Privé Lounge 5', 'https://api-2103.ppgames.net/game_pic/square/200/725.png', 1, 'PRAGMATICLIVE'),
(1165, '213', 'Korean Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/213.png', 1, 'PRAGMATICLIVE'),
(1166, '237', 'Brazilian Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/237.png', 1, 'PRAGMATICLIVE'),
(1167, '902a9', 'ONE Blackjack 2', 'https://api-2103.ppgames.net/game_pic/square/200/902a9.png', 1, 'PRAGMATICLIVE'),
(1168, '441', 'Korean Speed Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/441.png', 1, 'PRAGMATICLIVE'),
(1169, '449', 'Korean Speed Baccarat 2', 'https://api-2103.ppgames.net/game_pic/square/200/449.png', 1, 'PRAGMATICLIVE'),
(1170, '206', 'Roulette Macao', 'https://api-2103.ppgames.net/game_pic/square/200/206.png', 1, 'PRAGMATICLIVE'),
(1171, '435', 'Speed Baccarat 16', 'https://api-2103.ppgames.net/game_pic/square/200/435.png', 1, 'PRAGMATICLIVE'),
(1172, '439', 'Speed Baccarat 17', 'https://api-2103.ppgames.net/game_pic/square/200/439.png', 1, 'PRAGMATICLIVE'),
(1173, '436', 'Baccarat 9', 'https://api-2103.ppgames.net/game_pic/square/200/436.png', 1, 'PRAGMATICLIVE'),
(1174, '230', 'Roulette Ruby', 'https://api-2103.ppgames.net/game_pic/square/200/230.png', 1, 'PRAGMATICLIVE'),
(1175, '227', 'Roulette Azure', 'https://api-2103.ppgames.net/game_pic/square/200/227.png', 1, 'PRAGMATICLIVE'),
(1176, '201', 'Roulette Green', 'https://api-2103.ppgames.net/game_pic/square/200/201.png', 1, 'PRAGMATICLIVE'),
(1177, '225', 'Auto Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/225.png', 1, 'PRAGMATICLIVE'),
(1178, '222', 'German Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/222.png', 1, 'PRAGMATICLIVE'),
(1179, '229', 'Roulette Indian', 'https://api-2103.ppgames.net/game_pic/square/200/229.png', 1, 'PRAGMATICLIVE'),
(1180, '221', 'Russian Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/221.png', 1, 'PRAGMATICLIVE'),
(1181, '224', 'Turkish Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/224.png', 1, 'PRAGMATICLIVE'),
(1182, '223', 'Italian Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/223.png', 1, 'PRAGMATICLIVE'),
(1183, '233', 'Romanian Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/233.png', 1, 'PRAGMATICLIVE'),
(1184, '235', 'Dutch Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/235.png', 1, 'PRAGMATICLIVE'),
(1185, '234', 'Spanish Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/234.png', 1, 'PRAGMATICLIVE'),
(1186, '226', 'Speed Auto Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/226.png', 1, 'PRAGMATICLIVE'),
(1187, '903', 'Dutch ONE Blackjack', 'https://api-2103.ppgames.net/game_pic/square/200/903.png', 1, 'PRAGMATICLIVE'),
(1188, '904', 'Turkish ONE Blackjack', 'https://api-2103.ppgames.net/game_pic/square/200/904.png', 1, 'PRAGMATICLIVE'),
(1189, '1320', 'Big Bass Crash', 'https://api-2103.ppgames.net/game_pic/square/200/1320.png', 1, 'PRAGMATICLIVE'),
(1190, '211', 'Lucky 6 Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/211.png', 1, 'PRAGMATICLIVE'),
(1191, 'dowin', 'Dowin', 'https://vedaimg.enjoycx.com/img/game/dowin/dowin.png', 1, 'DOWIN'),
(1192, '44001', 'Vir2al', 'https://media.ttfileserver.com/385/vir2al/300x300/44001.png', 1, 'VIR2ALDESKTOP'),
(1193, '44001', 'Vir2al', 'https://media.ttfileserver.com/385/vir2al/300x300/44001.png', 1, 'VIR2ALMOBILE'),
(1194, '14000', 'Greece Keno 20/80', 'https://media.ttfileserver.com/358/bitville/300x300/14000.png', 1, 'BITVILLE'),
(1195, '14001', 'Italy 10e Lotto 20/90', 'https://media.ttfileserver.com/358/bitville/300x300/14001.png', 1, 'BITVILLE'),
(1196, '14002', 'Malta Keno 20/80', 'https://media.ttfileserver.com/358/bitville/300x300/14002.png', 1, 'BITVILLE'),
(1197, '14003', 'Russia Keno 20/80', 'https://media.ttfileserver.com/358/bitville/300x300/14003.png', 1, 'BITVILLE'),
(1198, '14004', 'Slovakia Eclub Keno 20/80', 'https://media.ttfileserver.com/358/bitville/300x300/14004.png', 1, 'BITVILLE');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(1199, '14005', 'Big Tuesday', 'https://media.ttfileserver.com/358/bitville/300x300/14005.png', 1, 'BITVILLE'),
(1200, '14006', 'Friday Fun', 'https://media.ttfileserver.com/358/bitville/300x300/14006.png', 1, 'BITVILLE'),
(1201, '14007', 'Lucky Thursday', 'https://media.ttfileserver.com/358/bitville/300x300/14007.png', 1, 'BITVILLE'),
(1202, '14008', 'Mid Week', 'https://media.ttfileserver.com/358/bitville/300x300/14008.png', 1, 'BITVILLE'),
(1203, '14009', 'Monday Special', 'https://media.ttfileserver.com/358/bitville/300x300/14009.png', 1, 'BITVILLE'),
(1204, '14010', 'Saturday Lotto', 'https://media.ttfileserver.com/358/bitville/300x300/14010.png', 1, 'BITVILLE'),
(1205, '14011', 'Russia Gosloto 5/36', 'https://media.ttfileserver.com/358/bitville/300x300/14011.png', 1, 'BITVILLE'),
(1206, '14012', 'Russia Gosloto 7/49', 'https://media.ttfileserver.com/358/bitville/300x300/14012.png', 1, 'BITVILLE'),
(1207, '14013', 'Russia Gosloto 6/45', 'https://media.ttfileserver.com/358/bitville/300x300/14013.png', 1, 'BITVILLE'),
(1208, '14014', 'UK 49s Lunchtime Draw', 'https://media.ttfileserver.com/358/bitville/300x300/14014.png', 1, 'BITVILLE'),
(1209, '14015', 'UK 49s Teatime Draw', 'https://media.ttfileserver.com/358/bitville/300x300/14015.png', 1, 'BITVILLE'),
(1210, '14016', 'France Lotto 5/49', 'https://media.ttfileserver.com/358/bitville/300x300/14016.png', 1, 'BITVILLE'),
(1211, '14017', 'Ghana Lotto 5/90', 'https://media.ttfileserver.com/358/bitville/300x300/14017.png', 1, 'BITVILLE'),
(1212, '14018', 'Italy SuperEna Lotto 6/90', 'https://media.ttfileserver.com/358/bitville/300x300/14018.png', 1, 'BITVILLE'),
(1213, '14019', 'USA Mega Millions 5/70', 'https://media.ttfileserver.com/358/bitville/300x300/14019.png', 1, 'BITVILLE'),
(1214, '30502', 'Absolute Black Roulette', 'https://media.ttfileserver.com/375/absolute/300x300/30502.png', 1, 'ABSOLUTE'),
(1215, '30503', 'Absolute White Roulette', 'https://media.ttfileserver.com/375/absolute/300x300/30503.png', 1, 'ABSOLUTE'),
(1216, '30504', 'Absolute Brown Roulette', 'https://media.ttfileserver.com/375/absolute/300x300/30504.png', 1, 'ABSOLUTE'),
(1217, '30543', 'Absolute RNG', 'https://media.ttfileserver.com/375/absolute/300x300/30543.png', 1, 'ABSOLUTE'),
(1218, '30552', 'MSC Casino', 'https://media.ttfileserver.com/375/absolute/300x300/30552.png', 1, 'ABSOLUTE'),
(1219, '30553', 'Absolute Bright Roulette', 'https://media.ttfileserver.com/375/absolute/300x300/30553.png', 1, 'ABSOLUTE'),
(1220, '30592', 'Nepal Roulette 1', 'https://media.ttfileserver.com/375/absolute/300x300/30592.png', 1, 'ABSOLUTE'),
(1221, '30593', 'Nepal Roulette 2', 'https://media.ttfileserver.com/375/absolute/300x300/30593.png', 1, 'ABSOLUTE'),
(1222, '30594', 'Lucky Number 14', 'https://media.ttfileserver.com/375/absolute/300x300/30594.png', 1, 'ABSOLUTE'),
(1223, '45800', 'InRace', 'https://media.ttfileserver.com/391/inrace/300x300/45800.png', 1, 'INRACE'),
(1224, '702', 'Oriental Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/702.png', 1, 'VIVO'),
(1225, '703', 'Hat-Trick Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/703.png', 1, 'VIVO'),
(1226, '705', 'European Auto Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/705.png', 1, 'VIVO'),
(1227, '706', 'Oracle 360 Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/706.png', 1, 'VIVO'),
(1228, '707', 'Oracle Blaze Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/707.png', 1, 'VIVO'),
(1229, '708', 'Portomaso Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/708.png', 1, 'VIVO'),
(1230, '712', 'Macau Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/712.png', 1, 'VIVO'),
(1231, '714', 'Las Vegas Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/714.png', 1, 'VIVO'),
(1232, '715', 'Las Vegas 1 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/715.png', 1, 'VIVO'),
(1233, '716', 'Las Vegas 2 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/716.png', 1, 'VIVO'),
(1234, '717', 'Las Vegas 3 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/717.png', 1, 'VIVO'),
(1235, '718', 'Singapore 1 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/718.png', 1, 'VIVO'),
(1236, '719', 'Singapore 2 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/719.png', 1, 'VIVO'),
(1237, '725', 'Singapore 3 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/725.png', 1, 'VIVO'),
(1238, '726', 'Montecarlo 1 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/726.png', 1, 'VIVO'),
(1239, '727', 'Montecarlo 2 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/727.png', 1, 'VIVO'),
(1240, '738', 'VA Baccarat 3', 'https://media.ttfileserver.com/345/vivo/300x300/738.png', 1, 'VIVO'),
(1241, '739', 'VA Baccarat 4', 'https://media.ttfileserver.com/345/vivo/300x300/739.png', 1, 'VIVO'),
(1242, '740', 'VA Baccarat 1', 'https://media.ttfileserver.com/345/vivo/300x300/740.png', 1, 'VIVO'),
(1243, '742', 'VA Baccarat 2', 'https://media.ttfileserver.com/345/vivo/300x300/742.png', 1, 'VIVO'),
(1244, '747', 'Galaxy Baccarat 1', 'https://media.ttfileserver.com/345/vivo/300x300/747.png', 1, 'VIVO'),
(1245, '748', 'Galaxy Baccarat 2', 'https://media.ttfileserver.com/345/vivo/300x300/748.png', 1, 'VIVO'),
(1246, '749', 'Galaxy Baccarat 3', 'https://media.ttfileserver.com/345/vivo/300x300/749.png', 1, 'VIVO'),
(1247, '751', 'Galaxy Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/751.png', 1, 'VIVO'),
(1248, '752', 'Burgas Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/752.png', 1, 'VIVO'),
(1249, '759', 'Bulgaria Baccarat 2 VIP', 'https://media.ttfileserver.com/345/vivo/300x300/759.png', 1, 'VIVO'),
(1250, '761', 'VA Baccarat 1 VIP', 'https://media.ttfileserver.com/345/vivo/300x300/761.png', 1, 'VIVO'),
(1251, '762', 'VA Baccarat 2 VIP', 'https://media.ttfileserver.com/345/vivo/300x300/762.png', 1, 'VIVO'),
(1252, '763', 'American Auto Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/763.png', 1, 'VIVO'),
(1253, '770', 'VA Baccarat 5', 'https://media.ttfileserver.com/345/vivo/300x300/770.png', 1, 'VIVO'),
(1254, '773', 'French Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/773.png', 1, 'VIVO'),
(1255, '774', 'Dragon Tiger', 'https://media.ttfileserver.com/345/vivo/300x300/774.png', 1, 'VIVO'),
(1256, '701', 'Bulgaria Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/701.png', 1, 'VIVO'),
(1257, '777', 'Dragon Tiger', 'https://media.ttfileserver.com/345/vivo/300x300/777.png', 1, 'VIVO'),
(1258, 'ptx_quantumita', 'x1000 Quantum Roulette', 'https://img.dyn123.com/images/slot-images/PT/1000quantumroulette.png', 1, 'PLAYTECHLIVE'),
(1259, 'ptx_wonderland', 'Adventures Beyond Wonderland Live', 'https://img.dyn123.com/images/slot-images/PT/adventuresbeyondwonderlandlive.png', 1, 'PLAYTECHLIVE'),
(1260, 'ptx_aogroulette', 'Age Of The Gods Bonus Roulette', 'https://img.dyn123.com/images/slot-images/PT/ageofgodsbonusroulette.png', 1, 'PLAYTECHLIVE'),
(1261, 'ptx_andarbahar', 'Andar Bahar', 'https://img.dyn123.com/images/slot-images/PT/andarbaharlive.png', 1, 'PLAYTECHLIVE'),
(1262, 'ptx_arabicroulette', 'Arabic Roulette', 'https://img.dyn123.com/images/slot-images/PT/arabicroulette.png', 1, 'PLAYTECHLIVE'),
(1263, 'ptx_slingshot', 'Auto Roulette', 'https://img.dyn123.com/images/slot-images/PT/autoroulette.png', 1, 'PLAYTECHLIVE'),
(1264, 'ptx_autoroulette2', 'Auto Roulette 2', 'https://img.dyn123.com/images/slot-images/PT/autoroulette2.png', 1, 'PLAYTECHLIVE'),
(1265, 'ptx_baccarat1', 'Baccarat', 'https://img.dyn123.com/images/slot-images/PT/baccarat.png', 1, 'PLAYTECHLIVE'),
(1266, 'ptx_speedbaccarat2', 'Baccarat Brasileira', 'https://img.dyn123.com/images/slot-images/PT/baccaratbrasileira.png', 1, 'PLAYTECHLIVE'),
(1267, 'ptx_bal_speedbaccara', 'Baccarat Brasileira NC', 'https://img.dyn123.com/images/slot-images/PT/baccaratbrasileiranc.png', 1, 'PLAYTECHLIVE'),
(1268, 'ptx_bal_baccarat1', 'Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/baccaratnc.png', 1, 'PLAYTECHLIVE'),
(1269, 'ptx_betslipbaccarat', 'Bet On Baccarat', 'https://img.dyn123.com/images/slot-images/PT/betonbaccaratlive.png', 1, 'PLAYTECHLIVE'),
(1270, 'ptx_dtl_betondragont', 'Bet On Dragon Tiger', 'https://img.dyn123.com/images/slot-images/PT/betondragontigerlive.png', 1, 'PLAYTECHLIVE'),
(1271, 'ptx_pokl_betonpoker', 'Bet On Poker', 'https://img.dyn123.com/images/slot-images/PT/betonpokerlive.png', 1, 'PLAYTECHLIVE'),
(1272, 'ptx_brusselsrol', 'Brussels Roulette', 'https://img.dyn123.com/images/slot-images/PT/brusselsroulette.png', 1, 'PLAYTECHLIVE'),
(1273, 'ptx_triumphrol', 'Bucharest French Roulette', 'https://img.dyn123.com/images/slot-images/PT/bucharestfrenchroulette.png', 1, 'PLAYTECHLIVE'),
(1274, 'ptx_quantumautorol', 'Bucharest Quantum Roulette', 'https://img.dyn123.com/images/slot-images/PT/bucharestquantumroulette.png', 1, 'PLAYTECHLIVE'),
(1275, 'ptx_rol_triumphrol', 'Bucharest Roulette', 'https://img.dyn123.com/images/slot-images/PT/bucharestroulette.png', 1, 'PLAYTECHLIVE'),
(1276, 'ptx_espanaslots', 'Buffalo Blitz España', 'https://img.dyn123.com/images/slot-images/PT/buffaloblitzespaña.png', 1, 'PLAYTECHLIVE'),
(1277, 'ptx_liveslots', 'Buffalo Blitz Live Slots', 'https://img.dyn123.com/images/slot-images/PT/buffaloblitzliveslots.png', 1, 'PLAYTECHLIVE'),
(1278, 'ptx_deutschrol', 'Deutsches Roulette', 'https://img.dyn123.com/images/slot-images/PT/deutschesroulette.png', 1, 'PLAYTECHLIVE'),
(1279, 'ptx_everybodysjp', 'Everybody\'s Jackpot Live', 'https://img.dyn123.com/images/slot-images/PT/everybodysjackpotlive.png', 1, 'PLAYTECHLIVE'),
(1280, 'ptx_fashiontv', 'Fashion TV Baccarat', 'https://img.dyn123.com/images/slot-images/PT/fashiontvbaccarat.png', 1, 'PLAYTECHLIVE'),
(1281, 'ptx_bal_fashiontv', 'Fashion TV Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/fashiontvbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1282, 'ptx_cardmatch', 'Football Card Showdown Live', 'https://img.dyn123.com/images/slot-images/PT/footballcardshowdownlive.png', 1, 'PLAYTECHLIVE'),
(1283, 'ptx_livefootballroul', 'Football French Roulette', 'https://img.dyn123.com/images/slot-images/PT/footballfrenchroulette.png', 1, 'PLAYTECHLIVE'),
(1284, 'ptx_livefootballrol', 'Football Roulette', 'https://img.dyn123.com/images/slot-images/PT/footballroulette.png', 1, 'PLAYTECHLIVE'),
(1285, 'ptx_loungerol', 'French Roulette', 'https://img.dyn123.com/images/slot-images/PT/frenchroulette.png', 1, 'PLAYTECHLIVE'),
(1286, 'ptx_truefalsetrivia', 'Friday Big Quiz', 'https://img.dyn123.com/images/slot-images/PT/fridaybigquiz.png', 1, 'PLAYTECHLIVE'),
(1287, 'ptx_grandbaccarat', 'Grand Baccarat', 'https://img.dyn123.com/images/slot-images/PT/grandbaccarat.png', 1, 'PLAYTECHLIVE'),
(1288, 'ptx_bal_grandbaccara', 'Grand Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/grandbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1289, 'ptx_quantumgreek', 'Greek Quantum Roulette', 'https://img.dyn123.com/images/slot-images/PT/greekquantumroulette.png', 1, 'PLAYTECHLIVE'),
(1290, 'ptx_greekrol', 'Greek Roulette', 'https://img.dyn123.com/images/slot-images/PT/greekroulette.png', 1, 'PLAYTECHLIVE'),
(1291, 'ptx_roulette1', 'Hindi Roulette', 'https://img.dyn123.com/images/slot-images/PT/hindiroulette.png', 1, 'PLAYTECHLIVE'),
(1292, 'ptx_squeezebaccarat', 'Japanese Squeeze Baccarat', 'https://img.dyn123.com/images/slot-images/PT/japanesesqueezebaccarat.png', 1, 'PLAYTECHLIVE'),
(1293, 'ptx_bal_squeezebacca', 'Japanese Squeeze Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/japanesesqueezebaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1294, 'ptx_racingrol', 'Jet Set Racing Roulette Live', 'https://img.dyn123.com/images/slot-images/PT/jetsetracingroulettelive.png', 1, 'PLAYTECHLIVE'),
(1295, 'ptx_speedbaccarat1', 'Korean Speed Baccarat', 'https://img.dyn123.com/images/slot-images/PT/koreanspeedbaccarat.png', 1, 'PLAYTECHLIVE'),
(1296, 'ptx_bal_speedbaccara', 'Korean Speed Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/koreanspeedbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1297, 'ptx_3cardbrag', '3 Card Brag', 'https://img.dyn123.com/images/slot-images/PT/live3cardbrag.png', 1, 'PLAYTECHLIVE'),
(1298, 'ptx_doublezero', 'American Roulette', 'https://img.dyn123.com/images/slot-images/PT/liveamericanroulette.png', 1, 'PLAYTECHLIVE'),
(1299, 'ptx_ubal_lobby', 'Baccarat Lobby', 'https://img.dyn123.com/images/slot-images/PT/livebaccarat.png', 1, 'PLAYTECHLIVE'),
(1300, 'ptx_sicbo', 'Speed Sic Bo', 'https://img.dyn123.com/images/slot-images/PT/livebaccarat.png', 1, 'PLAYTECHLIVE'),
(1301, 'ptx_bjl_lobby', 'Blackjack Lobby', 'https://img.dyn123.com/images/slot-images/PT/liveblackjack.png', 1, 'PLAYTECHLIVE'),
(1302, 'ptx_casinoholdem', 'Casino Hold\'em', 'https://img.dyn123.com/images/slot-images/PT/livecasinoholdem.png', 1, 'PLAYTECHLIVE'),
(1303, 'ptx_casinostudpoker', 'Casino Stud Poker', 'https://img.dyn123.com/images/slot-images/PT/livecasinostudpoker.png', 1, 'PLAYTECHLIVE'),
(1304, 'ptx_dragontiger', 'Dragon Tiger', 'https://img.dyn123.com/images/slot-images/PT/livedragontiger.png', 1, 'PLAYTECHLIVE'),
(1305, 'ptx_rofl_lobby', 'French Roulette', 'https://img.dyn123.com/images/slot-images/PT/livefrenchroulette.png', 1, 'PLAYTECHLIVE'),
(1306, 'ptx_hilo', 'Hi-Lo', 'https://img.dyn123.com/images/slot-images/PT/livehilo.png', 1, 'PLAYTECHLIVE'),
(1307, 'ptx_qrol_lobby', 'Quantum Roulette Live', 'https://img.dyn123.com/images/slot-images/PT/livequantumroulette.png', 1, 'PLAYTECHLIVE'),
(1308, 'ptx_rol_lobby', 'Roulette Lobby', 'https://img.dyn123.com/images/slot-images/PT/liveroulette.png', 1, 'PLAYTECHLIVE'),
(1309, 'ptx_bfbl_lobby', 'Buffalo Blitz Live Slots', 'https://img.dyn123.com/images/slot-images/PT/liveslotsbuffaloblitz.png', 1, 'PLAYTECHLIVE'),
(1310, 'ptx_spinawin', 'Spin a Win', 'https://img.dyn123.com/images/slot-images/PT/livespinawin.png', 1, 'PLAYTECHLIVE'),
(1311, 'ptx_perspreadbetrol', 'Spread Bet Roulette', 'https://img.dyn123.com/images/slot-images/PT/livespreadbetroulette.png', 1, 'PLAYTECHLIVE'),
(1312, 'ptx_trvl_fireblazetr', 'Mega Fire Blaze Live Trivia', 'https://img.dyn123.com/images/slot-images/PT/megafireblazelivetrivia.png', 1, 'PLAYTECHLIVE'),
(1313, 'ptx_trvl_lobby', 'Mega Fire Blaze Live Trivia', 'https://img.dyn123.com/images/slot-images/PT/megafireblazelivetrivia.png', 1, 'PLAYTECHLIVE'),
(1314, 'ptx_fireblazetrivia', 'Mega Fire Blaze Lucky Ball Brasileiro', 'https://img.dyn123.com/images/slot-images/PT/megafireblazeluckyballbrasileiro.png', 1, 'PLAYTECHLIVE'),
(1315, 'ptx_fireblazerol', 'Mega Fire Blaze Roulette Live', 'https://img.dyn123.com/images/slot-images/PT/megafireblazeroulettelive.png', 1, 'PLAYTECHLIVE'),
(1316, 'ptx_fbrol_lobby', 'Mega Fire Blaze Ruleta España', 'https://img.dyn123.com/images/slot-images/PT/megafireblazeroulettelive.png', 1, 'PLAYTECHLIVE'),
(1317, 'ptx_espanafireblaze', 'Mega Fire Blaze Ruleta España', 'https://img.dyn123.com/images/slot-images/PT/megafireblazeruletaespaña.png', 1, 'PLAYTECHLIVE'),
(1318, 'ptx_dutchroulette', 'Nederlandstalige Roulette', 'https://img.dyn123.com/images/slot-images/PT/nederlandstaligeroulette.png', 1, 'PLAYTECHLIVE'),
(1319, 'ptx_prestigerol', 'Prestige Roulette', 'https://img.dyn123.com/images/slot-images/PT/prestigeroulette.png', 1, 'PLAYTECHLIVE'),
(1320, 'ptx_quantumroulette', 'Quantum Roulette Live', 'https://img.dyn123.com/images/slot-images/PT/quantumroulettelive.png', 1, 'PLAYTECHLIVE'),
(1321, 'ptx_brazilianrol', 'Roleta Brasileira', 'https://img.dyn123.com/images/slot-images/PT/roletabrasileira.png', 1, 'PLAYTECHLIVE'),
(1322, 'ptx_rol_loungerol', 'Roulette', 'https://img.dyn123.com/images/slot-images/PT/roulette.png', 1, 'PLAYTECHLIVE'),
(1323, 'ptx_rouletteitaliana', 'Roulette Italiana', 'https://img.dyn123.com/images/slot-images/PT/rouletteitaliana.png', 1, 'PLAYTECHLIVE'),
(1324, 'ptx_ruyiroulette', 'Ruyi French Roulette', 'https://img.dyn123.com/images/slot-images/PT/ruyifrenchroulette.png', 1, 'PLAYTECHLIVE'),
(1325, 'ptx_rol_ruyiroulette', 'Ruyi Roulette', 'https://img.dyn123.com/images/slot-images/PT/ruyiroulette.png', 1, 'PLAYTECHLIVE'),
(1326, 'ptx_speedbaccarat', 'Ru Yi Speed Baccarat', 'https://img.dyn123.com/images/slot-images/PT/ruyispeedbaccarat.png', 1, 'PLAYTECHLIVE'),
(1327, 'ptx_7bal_speedbaccar', 'Ru Yi Speed Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/ruyispeedbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1328, 'ptx_7emezzo', 'Sette E Mezzo', 'https://img.dyn123.com/images/slot-images/PT/setteemezzo.png', 1, 'PLAYTECHLIVE'),
(1329, 'ptx_deluxesicbo', 'SicBo Deluxe', 'https://img.dyn123.com/images/slot-images/PT/sicbodeluxe.png', 1, 'PLAYTECHLIVE'),
(1330, 'ptx_goldenbac1', 'Speed 6 Scanner Baccarat', 'https://img.dyn123.com/images/slot-images/PT/speed6scannerbaccarat.png', 1, 'PLAYTECHLIVE'),
(1331, 'ptx_bal_goldenbac1', 'Speed 6 Scanner Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/speed6scannerbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1332, 'ptx_primeslingshot', 'Speed Auto Roulette', 'https://img.dyn123.com/images/slot-images/PT/speedautoroulette.png', 1, 'PLAYTECHLIVE'),
(1333, 'ptx_minibaccarat', 'Speed Baccarat', 'https://img.dyn123.com/images/slot-images/PT/speedbaccarat.png', 1, 'PLAYTECHLIVE'),
(1334, 'ptx_bal_minibaccarat', 'Speed Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/speedbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1335, 'ptx_speedrol', 'Speed Roulette', 'https://img.dyn123.com/images/slot-images/PT/speedroulette.png', 1, 'PLAYTECHLIVE'),
(1336, 'ptx_spinawinwild', 'Spin a Win Wild Brasileiro', 'https://img.dyn123.com/images/slot-images/PT/spinawinwildlive.png', 1, 'PLAYTECHLIVE'),
(1337, 'ptx_teenpatti', 'Teen Patti Live', 'https://img.dyn123.com/images/slot-images/PT/teenpattilive.png', 1, 'PLAYTECHLIVE'),
(1338, 'ptx_cardshow', 'The Greatest Cards Show Live', 'https://img.dyn123.com/images/slot-images/PT/thegreatestcardsshow.png', 1, 'PLAYTECHLIVE'),
(1339, 'ptx_turkishrol', 'Turkish Roulette', 'https://img.dyn123.com/images/slot-images/PT/turkishroulette.png', 1, 'PLAYTECHLIVE'),
(1340, 'ptx_ukrol', 'UK Roulette', 'https://img.dyn123.com/images/slot-images/PT/ukroulette.png', 1, 'PLAYTECHLIVE'),
(1341, 'ptx_vipbaccarat', 'VIP Baccarat', 'https://img.dyn123.com/images/slot-images/PT/vipbaccarat.png', 1, 'PLAYTECHLIVE'),
(1342, 'ptx_bal_vipbaccarat', 'VIP Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/vipbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1343, 'ptx_xiangroulette', 'Xiang Long Roulette', 'https://img.dyn123.com/images/slot-images/PT/xianglongroulette.png', 1, 'PLAYTECHLIVE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico`
--

CREATE TABLE `historico` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `pagina` varchar(45) DEFAULT NULL,
  `jogo` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `data_hora` varchar(45) DEFAULT NULL,
  `saldo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `historico`
--

INSERT INTO `historico` (`id`, `usuario`, `pagina`, `jogo`, `ip`, `data_hora`, `saldo`) VALUES
(1, 2, 'Jogo', 'fortune-ox', '192.168.65.1', '28/11/2023 09:13:58', 'R$ 10'),
(2, 2, 'Jogo', 'fortune-tiger', '192.168.65.1', '28/11/2023 09:14:19', 'R$ 10'),
(3, 2, 'Jogo', 'candy-bonanza', '192.168.65.1', '28/11/2023 09:14:28', 'R$ 10'),
(4, 2, 'Jogo', 'vs20doghouse', '192.168.65.1', '28/11/2023 09:16:05', 'R$ 10'),
(5, 2, 'Jogo', 'galactic-gems', '192.168.65.1', '28/11/2023 06:18:17', 'R$ 10'),
(6, 2, 'Jogo', 'double-fortune', '192.168.65.1', '30/11/2023 01:36:23', 'R$ 15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `indicacoes`
--

CREATE TABLE `indicacoes` (
  `usuario` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `afiliado` varchar(50) DEFAULT NULL,
  `referencia` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(49) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `iso_639-1` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Despejando dados para a tabela `languages`
--

INSERT INTO `languages` (`id`, `name`, `iso_639-1`) VALUES
(1, 'English', 'en'),
(2, 'Afar', 'aa'),
(3, 'Abkhazian', 'ab'),
(4, 'Afrikaans', 'af'),
(5, 'Amharic', 'am'),
(6, 'Arabic', 'ar'),
(7, 'Assamese', 'as'),
(8, 'Aymara', 'ay'),
(9, 'Azerbaijani', 'az'),
(10, 'Bashkir', 'ba'),
(11, 'Belarusian', 'be'),
(12, 'Bulgarian', 'bg'),
(13, 'Bihari', 'bh'),
(14, 'Bislama', 'bi'),
(15, 'Bengali/Bangla', 'bn'),
(16, 'Tibetan', 'bo'),
(17, 'Breton', 'br'),
(18, 'Catalan', 'ca'),
(19, 'Corsican', 'co'),
(20, 'Czech', 'cs'),
(21, 'Welsh', 'cy'),
(22, 'Danish', 'da'),
(23, 'German', 'de'),
(24, 'Bhutani', 'dz'),
(25, 'Greek', 'el'),
(26, 'Esperanto', 'eo'),
(27, 'Spanish', 'es'),
(28, 'Estonian', 'et'),
(29, 'Basque', 'eu'),
(30, 'Persian', 'fa'),
(31, 'Finnish', 'fi'),
(32, 'Fiji', 'fj'),
(33, 'Faeroese', 'fo'),
(34, 'French', 'fr'),
(35, 'Frisian', 'fy'),
(36, 'Irish', 'ga'),
(37, 'Scots/Gaelic', 'gd'),
(38, 'Galician', 'gl'),
(39, 'Guarani', 'gn'),
(40, 'Gujarati', 'gu'),
(41, 'Hausa', 'ha'),
(42, 'Hindi', 'hi'),
(43, 'Croatian', 'hr'),
(44, 'Hungarian', 'hu'),
(45, 'Armenian', 'hy'),
(46, 'Interlingua', 'ia'),
(47, 'Interlingue', 'ie'),
(48, 'Inupiak', 'ik'),
(49, 'Indonesian', 'in'),
(50, 'Icelandic', 'is'),
(51, 'Italian', 'it'),
(52, 'Hebrew', 'iw'),
(53, 'Japanese', 'ja'),
(54, 'Yiddish', 'ji'),
(55, 'Javanese', 'jw'),
(56, 'Georgian', 'ka'),
(57, 'Kazakh', 'kk'),
(58, 'Greenlandic', 'kl'),
(59, 'Cambodian', 'km'),
(60, 'Kannada', 'kn'),
(61, 'Korean', 'ko'),
(62, 'Kashmiri', 'ks'),
(63, 'Kurdish', 'ku'),
(64, 'Kirghiz', 'ky'),
(65, 'Latin', 'la'),
(66, 'Lingala', 'ln'),
(67, 'Laothian', 'lo'),
(68, 'Lithuanian', 'lt'),
(69, 'Latvian/Lettish', 'lv'),
(70, 'Malagasy', 'mg'),
(71, 'Maori', 'mi'),
(72, 'Macedonian', 'mk'),
(73, 'Malayalam', 'ml'),
(74, 'Mongolian', 'mn'),
(75, 'Moldavian', 'mo'),
(76, 'Marathi', 'mr'),
(77, 'Malay', 'ms'),
(78, 'Maltese', 'mt'),
(79, 'Burmese', 'my'),
(80, 'Nauru', 'na'),
(81, 'Nepali', 'ne'),
(82, 'Dutch', 'nl'),
(83, 'Norwegian', 'no'),
(84, 'Occitan', 'oc'),
(85, '(Afan)/Oromoor/Oriya', 'om'),
(86, 'Punjabi', 'pa'),
(87, 'Polish', 'pl'),
(88, 'Pashto/Pushto', 'ps'),
(89, 'Portuguese', 'pt'),
(90, 'Quechua', 'qu'),
(91, 'Rhaeto-Romance', 'rm'),
(92, 'Kirundi', 'rn'),
(93, 'Romanian', 'ro'),
(94, 'Russian', 'ru'),
(95, 'Kinyarwanda', 'rw'),
(96, 'Sanskrit', 'sa'),
(97, 'Sindhi', 'sd'),
(98, 'Sangro', 'sg'),
(99, 'Serbo-Croatian', 'sh'),
(100, 'Singhalese', 'si'),
(101, 'Slovak', 'sk'),
(102, 'Slovenian', 'sl'),
(103, 'Samoan', 'sm'),
(104, 'Shona', 'sn'),
(105, 'Somali', 'so'),
(106, 'Albanian', 'sq'),
(107, 'Serbian', 'sr'),
(108, 'Siswati', 'ss'),
(109, 'Sesotho', 'st'),
(110, 'Sundanese', 'su'),
(111, 'Swedish', 'sv'),
(112, 'Swahili', 'sw'),
(113, 'Tamil', 'ta'),
(114, 'Telugu', 'te'),
(115, 'Tajik', 'tg'),
(116, 'Thai', 'th'),
(117, 'Tigrinya', 'ti'),
(118, 'Turkmen', 'tk'),
(119, 'Tagalog', 'tl'),
(120, 'Setswana', 'tn'),
(121, 'Tonga', 'to'),
(122, 'Turkish', 'tr'),
(123, 'Tsonga', 'ts'),
(124, 'Tatar', 'tt'),
(125, 'Twi', 'tw'),
(126, 'Ukrainian', 'uk'),
(127, 'Urdu', 'ur'),
(128, 'Uzbek', 'uz'),
(129, 'Vietnamese', 'vi'),
(130, 'Volapuk', 'vo'),
(131, 'Wolof', 'wo'),
(132, 'Xhosa', 'xh'),
(133, 'Yoruba', 'yo'),
(134, 'Chinese', 'zh'),
(135, 'Zulu', 'zu');

-- --------------------------------------------------------

--
-- Estrutura para tabela `minSaqueAutomatico`
--

CREATE TABLE `minSaqueAutomatico` (
  `id` int(11) NOT NULL,
  `valor_minimo` decimal(10,2) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `populares`
--

CREATE TABLE `populares` (
  `id` int(11) NOT NULL,
  `game_code` varchar(20) NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `provider` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `populares`
--

INSERT INTO `populares` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(1, 'fortune-gods', 'Fortune Gods', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11310.png', 1, 'PGSOFT'),
(2, 'double-fortune', 'Double Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11341.png', 1, 'PGSOFT'),
(3, 'fortune-mouse', 'Fortune Mouse', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11354.png', 1, 'PGSOFT'),
(4, 'ganesha-fortune', 'Ganesha Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11363.png', 1, 'PGSOFT'),
(5, 'fortune-ox', 'Fortune Ox', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11617.png', 1, 'PGSOFT'),
(6, 'crypt-fortune', 'Raider Jane\'s Crypt of Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12206.png', 1, 'PGSOFT'),
(7, 'fortune-tiger', 'Fortune Tiger', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12503.jpg', 1, 'PGSOFT');

-- --------------------------------------------------------

--
-- Estrutura para tabela `provedores`
--

CREATE TABLE `provedores` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `provedores`
--

INSERT INTO `provedores` (`id`, `code`, `name`, `type`, `status`) VALUES
(1, 'PRAGMATIC', 'Pragmatic Play', 'slot', 1),
(2, 'HABANERO', 'Habanero', 'slot', 1),
(3, 'BOOONGO', 'Booongo', 'slot', 1),
(4, 'PLAYSON', 'Playson', 'slot', 1),
(5, 'CQ9', 'CQ9', 'slot', 1),
(6, 'EVOPLAY', 'Evoplay', 'slot', 1),
(7, 'TOPTREND', 'TopTrend Gaming', 'slot', 1),
(8, 'DREAMTECH', 'DreamTech', 'slot', 1),
(9, 'PGSOFT', 'PG Soft', 'slot', 1),
(10, 'REELKINGDOM', 'Reel Kingdom', 'slot', 1),
(11, 'EZUGI', 'Ezugi', 'live', 1),
(12, 'EVOLUTION', 'Evolution', 'live', 1),
(13, 'DREAMGAMING', 'Dream Gaming', 'live', 0),
(14, 'WMLIVE', 'WM Live', 'live', 0),
(15, 'ASIAGAMING', 'Asia Gaming', 'live', 0),
(16, 'BOTA', 'Bota', 'live', 0),
(17, 'PRAGMATICLIVE', 'Pragmatic Play Live', 'live', 0),
(18, 'DOWIN', 'Dowin Casino', 'live', 0),
(19, 'VIR2ALDESKTOP', 'Vir2Al Desktop', 'live', 0),
(20, 'VIR2ALMOBILE', 'Vir2Al Mobile', 'live', 0),
(21, 'GLOBALBET', 'Globalbet', 'live', 0),
(22, 'BITVILLE', 'Bitville', 'live', 0),
(23, 'ABSOLUTE', 'Absolute', 'live', 0),
(24, 'INRACE', 'Inrace', 'live', 0),
(25, 'VIVO', 'Vivo', 'live', 0),
(26, 'PLAYTECHLIVE', 'PlayTech', 'live', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `saques`
--

CREATE TABLE `saques` (
  `tipo_chave` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `typeKey` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `datahora` varchar(255) DEFAULT NULL,
  `pago` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `observacao` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `saques`
--

INSERT INTO `saques` (`tipo_chave`, `id`, `usuario`, `key`, `typeKey`, `value`, `datahora`, `pago`, `status`, `observacao`) VALUES
('', 1, 1, '41804366803', 'CPF', '5', '30/11/2023 01:11:40', 1, 'Recusado', 'Pagamento Recusado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `suitpay`
--

CREATE TABLE `suitpay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `suitpay`
--

INSERT INTO `suitpay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(0, 'https://ws.suitpay.app', 'athilsonjr_1701120563690', 'b0dba86444c91c73e02eeb0b68865a1cc88ebbba75798addde68e9cce8b4856ca140193b33b948ff90a2f96488d24b0e', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tema`
--

CREATE TABLE `tema` (
  `id` int(11) NOT NULL,
  `cor_padrao` varchar(45) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `texto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tema`
--

INSERT INTO `tema` (`id`, `cor_padrao`, `custom_css`, `texto`) VALUES
(0, '#2DFF59', 'PAINEL', '#FFFFFF');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transacoes`
--

CREATE TABLE `transacoes` (
  `id` int(11) NOT NULL,
  `transacao_id` varchar(255) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `chave` varchar(255) NOT NULL,
  `tipo` enum('deposito','saque') DEFAULT NULL,
  `tipo_chave` varchar(255) NOT NULL,
  `data_hora` varchar(255) DEFAULT NULL,
  `qrcode` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `transacoes`
--

INSERT INTO `transacoes` (`id`, `transacao_id`, `usuario`, `valor`, `chave`, `tipo`, `tipo_chave`, `data_hora`, `qrcode`, `code`, `status`) VALUES
(1, '21552b58-1156-4cb3-add3-7543aba7934c', 1, 40.00, '', 'deposito', '', '2023-11-22 21:59:59', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACUElEQVRIieWWwc2kMAyFjTjkljQQiTZyS0tDAzA0AC3lljYi0cDMLYcI7zMzu/sf470uQjPwIVm28/wSov/5csy7GbdMM487ncxFBS2NR2pE05PanMcnKWE8dzO94rRH7/J4VDU86nnkaePxyOc/QKQxZL5ioaiHqAjRuLg6vuhHmX1Q+hnOP/ffJvdBuQxzLi75mX+saB90iZ8R/3wFfMKaFhW0xs8Vr96l8RX4ZXRw4HOPtOa24oGm606pH1qD17JQW6IfRI06iFo29gt5S81ltLSooGNPQRJ787nVthgdHPL05jJnv2ZvA82VVNCGNtcyJ97SxAibdNCl8zIoB1Kc3lnGWQdRhSSG1cRE8GV0kCK/Ky2hwEOu0FzSwQETlFBRw9ejkstFBa3hi/wjIBn/wESwDiII7iEVx23AsxYmOFizJL/wkP07hr1QoiXxH0zxIr9FCTGDjAG8CA35VtQPiZo1kAHGgRZ4uNFBl6Yr0gzjlRksHyX3QxvbUNHSEf6PsHPSwYH5YKgR3stP2G8sStgeAXsHPOT23kA6WE/OI+S0sh8SUioqaKUoKJken6WpOkiwXIKDAfrFTEdWQoNBnrbcoOHF8KchCkin7LYZiyJiXu/l6IeY4jWjJ2URBxjfrIPWSCjM7xXKEpk//eyGd0uLyIll2/r6UjfE81OSucvB2aPqIM4Mu5FMYOMUvjEVEKeUhGTuighiUMOnEf27el7xPvYo4YYVqbLxXdDS75i9UM6K8BCoETrEKOmgkymGdcOI/ICAd0r98P+9fgHZoc3UADtNeAAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/7366c8aa1b1b4d7aaa5f608ed6563e055204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042F8D', 'processamento'),
(2, 'd187099c-7198-4bb4-a9e5-fc5100e01fac', 1, 40.00, '', 'deposito', '', '2023-11-22 22:10:57', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTklEQVRIieWWMc7kIAyFHaWggwsg5Rp0XCm5wExygeRKdFzDEhfIdBTReJ//HY22jLf9UQr0KULYfs+G6DevILK68aQ403iUJsIm6LGXa040yDXUcSUjzG3N45l5qeNWx6Ob4VGu2ck78bO2/4Cb8NBFcCWxQ0RUJynsXST6J8x7EPncU/t+3yTfhFhDvYJwKO1V+VvQmzAIzpGjilSUNS7VBn2mObHHl7UWQ7fC9satimwSfZaTbBDh6DlpWmnciSEqEwwdJZjejryKgT5h3oZD4Yfjp/AislWeyQY9iphx2rRVrSYON0LIuEkfIadn0R9MkFw7hOZ8eTftqGYhGySG/k9CNRuODZ1NMJRpzxGXecn1UC+QCZJT+59ZDnhQ+PGJ6C70sD/RTxNAWnRvgkNneOGFWCqEgT2bIJHmc0EpHcSgexMcqnYPBAIXvzWrbIJEiEL2DCvLmUQ6GaGKf1YTQdXxr4/uQ/jojcGRaZHLJ1q6DaKHhAoOHSKr7Uw2GHrbOpSMycXP/r3SXYiB9ewX7vPEldCCEpugd+NLUI5phY8ypEg2mNAzr1mnhmxdTscmOJRpTXJm9P84lGsoZIKhxAchEIwwHmp7dRuEkvd0aQ/sEdUMRjgIY3SuTtYUg7ZQG/TQQI1e9dzeWT798zb84dcCFyMhol42QZ3aeRSBizUhu7NBhLMVnjNGJ+LSAWqDePBUpAVTmzE9RcgMMbwSmr++fEK3Q4mUUYv40OFrhPpewnNx0i7Ux1e1Qc0noZr0gCPK9GkCt+HvXX8AqFOKUUOiRBoAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/166a99d5cdd34870baef72e674cb62045204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304B0FE', 'processamento'),
(3, '28da2abc-fd0b-486b-a007-1af3678c8db0', 1, 40.00, '', 'deposito', '', '2023-11-22 22:16:35', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVklEQVRIieWWva2sMBCFBzlwBg1Yog1nboltAJYGoCVnbsOSG2AzB2jnnYHd+17oeelF1gp9Wg3ze8ZEv/kZmDdPj+S6yhwLc1bBnswWMlkaKr+teZIShrLWPJNZYx6S2asaPolme06ByJb/gDvnOfDb8856iIho3MWfE479DbMNXvksP+efJDdBMevvbOSJ8k9BG+FQR7jEid/BvP34tlkFu0Qz5Qn59DBO02WzHZLlzY6v6GYrLi13RM2wp3NJ5VXLM5hXdeRJBbs6rjyuFTXlPZX3lRMFTLTEcU1wxvU+U9BBQjhsDs+HNy8xq4Th7MM5xPwQf8xdDgW0Zo9uSefCBWbfllSwY3ogouomj2GUyqog+fFVZRBmWPPmE1EzHJLrA4ponmE8LE1BBzuG8sAmcz0H6WcdRCZ7P2L2h4hmxjSRCnbooui6WLYgHbXdH2qGA4sdjDDOAvtWCUV1C0fR3s1+I2qGXZJA5jBukG6pCKkgqsmMZhb9n5DYb4kbYX+9izVMccRQkwoOFbsDpkRMENQ3zFZIASsPc3Q+GFmFcR3sPdQDynku1Wz+Ck0Dkc8lUhfRxid5fnolZF4TDsoBFTKH1UIHBdus622RcO4SN0OicpAboutlBYzfzdUKO5Z3bN5etja6kVQQnhwEAccUuwVdfe/iZigcLtWM3wemiXUQW3tlKDBWNmpa9lsZmqHcGawMLyLqEixnHcSFx56zx/y6hT9TrINe9r7cVTzUm7Rwu63dI2CzDhJWT+6SOYLhesmIBiKfe732dcAfPneGdvh7nz9vOmjKVrvVZAAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/da8f65a6c3a74dfdbf608eedf6ae40f55204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630461BD', 'processamento'),
(4, '31a799fe-230c-4c76-8341-1a19ae544813', 1, 20.00, '', 'deposito', '', '2023-11-23 00:40:21', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACrklEQVRIie2XO47kIBCGyyIgMxdA8jXIuJJ9AT8u4L4SGddA4gLdGQFy7Y97WjPaTaaIF1mo9VnCRT3+qib6v/5dhnnXybBdtdqdHT1fcjySOjWRq6aoV+DLgcixz0dp7PK0alodn134dDS76cHT3n504p2s4cysmCv14XbLtFLefWP7z8v/GsPfp8vfz3cYBLgtn0zEqQle/xn932Pc74JpmrnkJ9Uh2rkHVxPt6uxW0sD5EadTjgfmCwcHgo2PmHfdg02pq4dp+IjiqF7IaDkmml6Fj4gEVAdsDOqS45EsUZpd27eYZv9JCBHWiHwacLafnm46QurAcPbC7WwTUQp1KeqU45HgpzTj0XUJlly+5HhgOztaaToKwp6hFrMcj14dodX0U5MJyGVa5diECpcvPJ2OOVrydZTjUSPyONuOGoqVTHingxQj4E1mnpQPlJfuwrCLIZaZCyqSH5xPOYY8jNAnz7uH46ExdZZjg1g1sVSnU49YV/eVg0KMXkQLytqjLpE7b7kS4gB5mB7YC/a08SeWIsw0RHVpCyG/NErqI2ESPOCWZTrixC2D4Da1yzGhF7X0gaW4a1q+DJRh5OBREDraYoXGrN52YBPhnvwKSGT1vDtJB26qeTeBoeWy3fjdXWUYBY2CWCJkD20NH3m7SoZJ56aUkDrG+9ZVnnKMHBypbk0sJ/RGiMQox4g8h3QrROsDyKYuXMlDIVCOaSn0SWQhDhOq4XLo8LVVuaYezO0xaCYteuiQ6pJjTIJcYBR2BU9vnFY5vt8gVk0hTsyG9CkSCcYUBnk4Ap/A1FKA5Bim7W3iwJQNDb7fdGDfZkB4iDmZFrS89+F74kDk33Pc2IWbfntI5rS3vQtjRiYMGpZQnYwW/f3n4/fY3JKwBMWh3qPlR5El+P/6e/0BEP8BfOfMozgAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/f93777c20d42437aacc301793f487eb95204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304BC25', 'processamento'),
(5, '4769d3e6-daee-4457-94d7-aed099d26f6b', 1, 20.00, '', 'deposito', '', '2023-11-23 00:40:47', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACSUlEQVRIieWWvY2EMBCFx3LgzDSARBvO3BI0wE8DpiVnbsOSG4DMAWLu+XZvL2UuPYQQ+nY1wm/ePJvoP18d81azYn2QPmNhziJoSe+VD7oUX9bolYTQl62SitdUy5bwBzHck15NPxveU/kDXB2fkW+nN5ZD0sHgJVuiKf4u8yGEnsGVz/0R+SHEpeJwuNzFcqb8aehD2HHBWs7KnBiyTEkII02VZpetb71QVQbJFE4gw8a99Xw4GbSGlnTNjm8zBBJD8rz61pEpgZNiGVSJlm8fotror7l1VgC7quFA5h5mHh0mgmSQ4cbhdtcS8xJ1cEJYMb89OczgENDNmEVQxR7VqHWzcMzWyWCXeK/DYfTJUKN/W1EAe/JQclgNjHGNLz2fQ8yvx0tzcnDMb38+hVgLyi5tLZiC3AmhdWWHh6nsLQGQIULom4azb1N8I0m8EBq+CUoyruNnRc9hF1GwWSK0zl4qyqB1A7oZfOsmvmeqMogiIwY5oq0oWE4prC1DyJUDi4pwsgzCSLNr/sdzNHw0Ywigirwzr4T8QYjhJxLBLvajQ/5AT954eIeAAMLDGeGzIEbSBTeKIOIamhyGZsoq5vH1nY8hwb1wEWrW3rp3N59DxXnCVttk1Ni5JpZBa8rtsfmilUhvTLQMfmsynIw5QpJgomWw7do+T7EEA0+WQDKIM8MWX7OMcwueQogDT5vE1lP46n1ak8DgoSo+Ceeu35rPIVJrpNxxP7thlUKcFZM+2paNu5wsg01PgyluAwX+CoHn8P9eX4mrfF+uH2dBAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/a507a1fa48b74b9c888d3c88b03723555204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63040CA4', 'processamento'),
(6, '89c50b34-c418-4330-99dd-10dc77b16e22', 1, 20.00, '', 'deposito', '', '2023-11-23 00:41:19', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACtUlEQVRIie2Wve2kMBDFBzkgww0guQ1nbgka4KMBaMmZ20ByA2zmwGLuDbt3e7qLhvhvrVboh2Ts+XhviH7W/8syL95sIS+ButB3gS897giMbMprzC92lwfR45C3tna+79p+LjR53h7hJdQxubM9hlCHp3hrDRfHBe8PeobJ7CVzMguC5M3yvbwCI96bz9/fNw0KLNv72iB1oc7JbN/kK7BN5gxH5+WiS+tQAqcedx6M11Sb5PbEa+FFj210Jx34lytSnUK+9JhamrknSRc1qY6xkh43Je+pn9MxR+ydOdZOj1G/E7bHMVtUEM0oxgeY3BlwRjRTfiV3Ub702MZqI5+hH9ltbT+mTy51mPPOFdowePOKBwrh0mMEZmol87YcCPxENOgx4s2MTsLReC80+HeodBhrgMy05vQ0F0jFuwZ1uCluLWSL2dDWUBpylx53JAXY3YUzitg8wbbw1bqdHXNvI6KVtyf46AL6yS3+aEqd0FV6TAGZP2yRNytawb/31uFGmIH6Qqvuvfl8gCNjLQStOkaWW14PsFSxW7kfqEfUz+AWPQZDX474QnEvif1vg1HhFmYIeahNNH+LqQpTMGvJl3gRFMusqe/0GAoB4ZyoH9pjTnmPx6DHTcQjjZI3GTdgsJMe2yTCMEbH0JhYh2AWPe5QL/7eEj0hEm42PbYsEYLovmLflN6Wt5PoMATmFfPb0CyGDvqUjwrjZpAoglyReyVIxZ80KHADXw2inaeEjdAQ0wPMMDRsLC4NsUH5kB6js9cCzUM3GDH8T1/q8N1VcBIoBHzeIWCkx/cUhpkFIZfvwGMvPcY8uLQZIyEmwfe88AQHjNgi4VwwJuNTdXiEb3tHQzAsehTReoJxwDvSMBMapYL0WHpIqs+CcZ1gs3qMeMNJMK0sEC0ZGT6epsI/69/1C0snS/JXr2sQAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/d5b2d01118a64c4088b84d1e4156dfd55204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63045EEE', 'processamento'),
(7, '8129623f-d8ec-44e4-8bbc-ac23a140993f', 1, 40.00, '', 'deposito', '', '2023-11-23 04:37:52', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACsklEQVRIie2WOc6kMBCFCzkggwsg+RrOfCX6AiwXgCs58zUs+QJN5sCi5hX0TEszyRTxb6FePiRwLe+ViX7Wv6tn3pnmUudi3q52nk897sgsLh/Bvp19t/Z0IHrs8x5TH4cX553r5Hh7hPE9OrtHuzj8eIj3wmdrudTRDfQMk1mDXTwvjo+AiP8Er8DI9+by9/qWQYGxmmI4Sta3Nr+/xVfgns1GiC9zSR0xhztKHW54GL3hUCefj8J7sKce92zXOJC/OqiVzb71uCmoG2/enK38WJFyPSaPh8nj+5jXkppgTj3u3DADhDRjg+iCWEc97ks+Ik1k9zA0ITPnRY/lTrBHGLrW7CGLvvW4iWg97AsYFTMiLD0ml3pGnvCZXtgsfxpZic3WpskPYFwMbGbS4z7QHO1GiTyNxEjb+AAXe4Vo9oIWhmPZ5QEWkxt6qVVeOcNvHmCk+YTbFcsMiQ8z3/rWYcm39F1e0IxFwp30uGvzHmhs4VJmZeT7bh8dRsFReXJi3jMPHaVRjxv0S2sOhAivkla6o9Rh8vUV8ykChUlAWHZ7gpkLPC+Rw3ugUV70WMJqa9eiiZDySi4/wfBdxhvs6eHiqQ+/R50GwzUhSqKEEb1GI9Nej/tg1iL74ssk1lDpAY7wS1y8FnoFGbCbHjeokjdHgEmgE83Ot3/rcCeVT41MpCvrxSx6TATHTSPOCH5AwqAw0mP8Q4jSfehojEe+B6MOI0rJN8wbJhGq7PQBZuhb1Amrw6kBAj31uC/mwGCMOIXhXCn3SY/pc8Ll6zAIgX4H4/9jsMXbI0r99wiJ10mPr/Ngum6idLDMu5GV2OcF0kSyMdCoykx4hDeHp2IwXp1IdnuICZ739sh9hXGOD7A0Mo7quAO/gb4/U0qF5YwMlyIZsBhrR/loXoV/1t/rF6MHNs5Iq33NAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/1d3ea3bee4bd4075aacce1f1cbc8541c5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63044C7F', 'processamento'),
(8, 'INTERNO 28112023021209', 1, NULL, '', 'deposito', '', '2023-11-28 02:12:09', NULL, NULL, 'pago'),
(9, 'INTERNO 28112023085559', 1, NULL, '', 'deposito', '', '2023-11-28 08:55:59', NULL, NULL, 'pago'),
(10, 'INTERNO 28112023085631', 2, NULL, '', 'deposito', '', '2023-11-28 08:56:31', NULL, NULL, 'pago'),
(11, 'INTERNO 28112023085956', 2, NULL, '', 'deposito', '', '2023-11-28 08:59:57', NULL, NULL, 'pago'),
(12, 'INTERNO 28112023090003', 2, NULL, '', 'deposito', '', '2023-11-28 09:00:03', NULL, NULL, 'pago'),
(13, '3e6cfcae-e69b-40bd-8f07-c0dbd8793918', 1, 20.00, '', 'deposito', '', '2023-11-30 20:06:57', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWsY30IBCFBxGQ2Q0g0QYZLdkNrO0G7JbIaAOJBrwZgeX5H96704XMn97qdEJfgDxv5r2B6C//RubVO+ZyhrJSYc4iOJA+kl2qXVhvSa8khKHshgZ/qVpWo48qhmvQW7Rk8pLKf8A90JyYkx1ZDlER8+nzWDXHX2X2Qei5+/Lz9yNyJ3y423FntPM36Ydj0icEQUVRb1XfQQbJZ5XsYGhmNNSqJINNh6RvlEPtk1TKIqgqmujekc9wLdWdRgaH4G5vCcNc9ekxljJIxr6MnSgPHj3FtTI4BFRUOPGbeUvX8gjSD6EnmWuGGYmP5A4ppAI1NsYouneCI7IIKqaXASc0QkUHS4ogBb0bGPlSbRShahbCR0zAek3eTkYGx8rMtDDfRuPEkWQw4sJ27VgxxjjLoIoFIbAapAcCAecsghTyyPpus4S24k4ZHBPfVLZWi+PIX8HSDVW1c+Qj0kQYCXwViSAZjfg9ItoBcXAQQniQ8oxJiBgqfRshJHc2F9MU+I34/ajUDRFZ0BPJP0eNLTB9yuyGgylbbXYYGRYuq88iiAFGcH0mUCX33Y5eSB7ez0t9dlZw+0ePftgSTL8ToacIgdMIIWFhIX/cbeyMYf4SuReqVoJG8mPn7gYHGYSe+AzMIbcE+5rkfkjNyJgE+Ki8K/6TCGJrH3w1LyNFoWqSQbwZNryXYsuQliRP/Apge6Tlgfj2+UUtzaRwD9cMG3Je8HgwWQqxdM7HyDDjywthey9lPBjmloTl4+J+2PTEuoxY93i6OKSoCP7d3z8iZ5osjvNFYgAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/69e2b201e5e84067983da4108353c1ff5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042335', 'processamento'),
(14, 'INTERNO 03122023083254', 2, NULL, '', 'deposito', '', '2023-12-03 08:32:54', NULL, NULL, 'pago'),
(15, '41d2b283-5f61-4e2a-933e-26da49729bf8', 2, 20.00, '', 'deposito', '', '2023-12-03 08:35:30', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACUklEQVRIieWWPa7kIBCE23JABhdA4hpkXGl8Af9cwL4SGddA4gLjzAFyb2HPm9Vm7k3fyNJY34xadFNVQPSbP4Z59nmk8g55iIU5i6CmfjnqwHUMZVX9TEIYypbsEHmPtUv9dojhkmoX3ZJoSOV/YCRz8El1Yjm8OjIpm2hH+qfNJxDzXH35Pt8hP4SNH3WKWVMdYv67oc/g1UuemPlwG7vZyyAp0ioPiSa2eLokhKHfGF95artZzTXP5xDtGC77we9QdrY6kAhq75j707s14L2fQxZC6mJtCzto4Ht5Akgeu4lVtcmMPr8uMUhg7RjzdDPxlniLQqig5H6JEBIv7MQw5FHZV9MD9GwhaSHkubkJarQDu5Nk8JJxE+RbFY50i/k51J7PtoN8ejiR75rPIYYJDexwcWrT0IpEkHzLvVWVNfRvjwyRQe1bTawELtaEyjIILTHX5uLoOMHLMqgDurAGGo5uj5aUDGKGWyqzQoBbhPB67+ZzmFoO7MntXM5gx7umADrIePb2pXilb82nkFSF+xBiHQ6gA8VJBE3CC7YyU6CXQvEsgqTQhTXNiXloUSaEHnXKigMoVqQZTjERNEhsnNoROcZ7+pnnY0i4LXhEn53a4dt/rP0YwkfmKBsMGPArJEEiqBXe+wbhYr4dLYBXUxW7aWAEuFgIUWdL0EPzMlJo/fztKcSdYVXujfUcLUVNFELcl9pdq/kXafbjYgGcg+2gooQ7m/0EiwRCxqi2xTq01rIMoiNEH7mFsS+48pEIXvPEqY3Ts1lS+yyCv/fzB8TjpYfcZUI/AAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/c8f64e4181424130bea6caf495a056275204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304DAEF', 'processamento'),
(16, 'SAQUE-2a2773bff09b0c556301ce13b4ecd015', 2, 1.00, '060.757.371-62 ', 'saque', 'CPF', '2023-12-03 08:43:31', NULL, NULL, 'processamento'),
(17, 'SAQUE-c47722631e55f9b3bb79860ed4f521ed', 2, 20.00, '060.757.371-62 ', 'saque', 'CPF', '2023-12-03 08:43:49', NULL, NULL, 'processamento'),
(18, 'SAQUE-aa1a0bb11458f5129916365f9b9d36fe', 2, 5.00, '060.757.371-62 ', 'saque', 'CPF', '2023-12-03 08:44:11', NULL, NULL, 'processamento'),
(19, 'SAQUE-c4a7cf0ddeef667de749a28ce5a5baa7', 2, 10.00, '060.757.371-62 ', 'saque', 'CPF', '2023-12-03 08:44:43', NULL, NULL, 'processamento'),
(20, 'f85de9c2-1699-4b22-9882-fb818e9f36be', 2, 5.00, '', 'deposito', '', '2023-12-03 08:49:40', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACwklEQVRIie2WvY3jMBCFR2DATGqAANtgxpakBmSrAaklZmxDABuQMwaE5t7Y2t3DXTSKVzAM+xPAn/l5b4h+n/+fgfkZzZLKlgun1kc+9bgns9Q2pfbIfsvmDCB6HMuW/FbdHGlimgOvt/DCbcr+iDTGNt7FT8sv9lzNYRvdw2Se1nMuCNgRzfPn8gqMeK+h/Hx+0qDAsnxwQ0Xqyiu3v5KvwAAnjmYL13IQPap56nGX9j74M/KSW8dmjf4WLkt1A2qn7mPYe/qESocpuEdG0vigNiTEyY13sBTyI7ehmpWkIWY97mrrLWrQUeQtuSnRqMcU/WolVOgJTu6RzHoDh33KqD43RlzXI/mjHveBX1lKDy01MMrZzXo84FoBCyNIbrR4v/d63FuzZHRSm9gcct5Lq1RY4g1tQNor9tm71EY97slj7TWgmRxReaUvhdDgQboBL8tKbaoQG3/qMeJ9oo2CZ24PFCNfoVLhjvehSh884z6jjuhzQB0m0Sez2rdiWWxV7mC7yxUhwBFFbU66SlOFxcQiWuqtVcFvXE49HirizSxG5N6b+EOPe8swNCgNgrQkg31mPaa4w1qhEFPyC5q7XpdX4S6brWLJckL5EmrwElMVptCQ8Be7MZTTQrHKoccdl8OKJZ7WHxZ/XX8DVwcJJyxfpbfw/tBjCgC4YoFwHgGeT6THQ94p0kyiLgOaMnycRIf7CDeDw7c+QGmwyccYdZism8UPpRIxBHWVDz3ukkw9S4JIuC6Jv/U3MOMLCoE+oBlJy5fPqzBMFWtDIRg+b/fhuy81mN6ad4hCSIuvX8KhwpjCtuzkgEGmOSkBPcY8uBIUojwD5BOSudMNjBkZyp1xS/wz+D3ewgs7KARy/oKn8aVVWrzlfZZQyXUxlK03MMkM+GLD7xFsuoZTHZYZGTZiJd5QiOGqQR3+ff59/gBknVfv3TZiagAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/5df80fe27b8947f18c976efad9e7598a5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304BE46', 'processamento'),
(21, '8d70f416-a08a-4e01-b1e5-175c46b29355', 2, 5.00, '', 'deposito', '', '2023-12-03 09:01:50', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACuklEQVRIie2Wv230MAzFabhQZy8gwGuo00r2Av6zgG8ldVpDgBawOxWC+T3GFyTI14SuY1xx+enAmBTfI4n+nv+fnnmL7e5qHzOH2nm+9Lijdqc0hTobZh4uB6LHPr+K7ZztuS6FZsf7I7waO8XhjGn0dXyKd5e5DFza1Sd6hiVLu0QwpNiu35P/NUa9Efvr83UNCiwnMZHh1bcbp+7b5f8e97E9PE249sKXaS+fDz1uQuoLHxK4Ntzuflif4OHy1KP75K9Kpt31uGeagh29JZeaWJdQSY/J82HqEvGaeScRxKzHiI3+XcJwMjqI0AKHHjcRse3Cw1naMw4X5esJRor5ZAgCnQhN1PEBLtAlWriOPi0R/Thcetx5nAyoUB9opoSk5wcYfQdVuTTdRXJvr1LhvqSlWCI+HL7A9vjQ40ZSxGF7QNYmjfSZvAZ3Dl/hCnmlOonZPMFwCGhxNwOz7UNaOO96jNidG3BXKyyT7Ex86bHcfGwv9+FYBr+6YysxxCQ1Ft8dDVJ811uFSd4Int2KV3nMkzu2DveldjLNJEVUHV516DFiw/gxGJcCaaKJPv1bg5tSb6dpQvuCuJ0lPYb9HxCEQUi7hHyGexxpMcG2EXIKMO93S2pxJ1lCTLg0ESiaaH6ATWpQbA+TGDYZTbdr6nCD3SegAaEDDCJpgfUBhkuVzJG3Yhu2MAnS457RfR8TnuT8cvdg1GFCbRzmIU5k/en59m8dxnR9RVHnITMfrmnnB1imK8xblD2jC+J7zqsw/BLXdZBMRbxsz2nWY7l8XxcWh1gCdp/3nFdhuOYLIxFd7LK0ocuXHmMf3HDzJUPikNQuRq7HPm+yfyFL2xn8q0qP8O5lyHeOzwBl3F6lxhsWBJc3rC0sC2b3AMt8RmwYXj7MgBVm1GOpN2OpRKmAP5xYj/+en88/+U1WRdqnrkwAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/4a9ce47cc4744a05b1786d46abc419dd5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304BDF3', 'processamento'),
(22, '68d06236-dd46-4cd2-8ab9-0d09c59ea175', 2, 5.00, '', 'deposito', '', '2023-12-03 09:01:54', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVklEQVRIieWWwY3zIBCFx+LADRpAog1utJQ0kNgN2C1xcxtINODcfLA8/xtvsrtH5r8uspzoU0TgzZsHRH95eOY5V194I3qWxlxV0JGZuD73xqVNqxlJCXObrTnJ8F7vq1l2PcRHDs89ONv+Ay6Fx8RnPm5ZD7GjPTyoOqJ7+bXNPih6pvb9/IjcB2XkNpXq+XjYXxXtg57NnOOZ+aRw58PvVQUp1zvzq1SX37VQQb/CDDSs5lVEGUpVBV06hnKQhZ3MmYLLpIKYbbbVWRHEl/pkJWR6rjzaA654YWFXOfohEcSkocRFJgyUSQWHEgaOXPBUtOF8CdIPXeYZbizHLeEHsLQOemzBwgY87dA23LISQs/Em22TWDF8m6EXFrqBoJQka3utOogdnSme6OIEMZmVEN5zhO/IwHam6r+q2Q0RO3NGFCBJDvqKIw285jycuJHQg87qIHIbwXtaxtiwo6/W7oZoHKQuAnDLETn88VIv9CVK91F9pAhZbu8l9UInL+QPgggZ8lGpG0LDk5qUg+OY307uh3AvJdQivlYEiHn/UTf0O+YMD3STNdNKj6SDw354DsMKPSvmH65y9EOyZsvhkdqGiqQ4KSGq6WFCWUkdcHIlUkEiObUXxnaQ3tILKjiwOBnZtRSzfU6ufih9BAeiE5Eh6Oisg3SdvCPExLVnl7cKeom+SnJbiNvV0Sp43RmQPyilGe17TgXMbRRB0L+wEzpCDXHhWVALBCnhzkNaiIvKKNEHP8ePQ7ohXU7gdmax8bBWFYSeC6OImC1uEgWkgn93/APtUW7xn/5gvAAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/3010a5d3e4de4b609fa1eef81d749f735204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304B111', 'processamento'),
(23, '610bf974-573b-44fd-b8ab-871a4c011e7e', 2, 40.00, '', 'deposito', '', '2023-12-03 09:24:59', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACt0lEQVRIie2Wva2sMBCFBzlwBg0guQ1nbgkaWKABaInMbSC5AcgcWJ53Zn+0T+8ld4gvWq3Qh2R5/s4Zot/n/6djXrLZ9jQHakPfBq563JJZA3X7Me3pYlc9iB6HtOUip/oyZXp4Xm/hmfoxuiseQyjDXbxS4uyYzRwOuocRpTfVgiFEM/8V/M8x8r369P19y6DAzzsWCjyHMkWzfouvwF00pz2mLIHO1q0hnXpMlppcxtw30W0RrcSzHjc7XtE+ZstIfHmEVG9gLoNEWcb9aCL+C+kxKn/tSFKavZEW2Eurx2SP5yi4apkzTdGdevysvKvSO+mKrlKqetzKKJiL+5HdavH+KpoOd5E3ptb3gzfXfqARqh63AX9uibjmMXH/IBr0GC28BnMG3JG3TIN/Z1CHfekyjnSrpwnNGN+tqcR87dRlCa61x0Cu6nHDPSrfksjeCLHJt3Dm6t3G0Cr5PnFa9bglHIwQ3ewPDOgDU6XHZNNqj+bZiQtGwb/O1uE2YBrQvLCj8jybTz3GNFSCSkGrjpElyqrHRKVjtzDK3iPrZ3CzHrc2LTtBXdBBV5YRX29g5Nu606L1zBbdRzV1uGGoVKoBKtXDBJbYt3oMG2kt4XZiBTFt+zHoMfQbwzQyVgZZN2CwDz3GXE770+ehMTu03Mx3MCLDkTjeYQNa6e2NKoy5bCJ8QPaOJvdd/hiMBnfwNBzpYSDQG3x8tY8Oi8n7IoPlZf1BIwx63OyQB3HpQbQcsX7KoMKMsuN2SLaIDdqH9Bh6efoeKs54wcfPuKrwa75n2cIISwf2BdJjcVdCByFVTxX3X9P9OcY+uDDEWzZB+Ui3sKy3XC3kv8dsdVyGW3iDyUc4AHwJmtffw5BMgEbMhEbpID2GRGXIA7QTvVMe1px6LPmGqXpx+yXKQKx6/Pv8+/wBP3FRa/GLu/4AAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/ac7039f6e4d54196a936c2ae1955b6a25204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304DCE3', 'processamento'),
(24, '4a6f9e60-14f8-481c-b952-adee6ada4c26', 2, 5.00, '', 'deposito', '', '2023-12-03 09:25:11', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWvY3sMAyEaThQJjcgQG0oY0veBvzTgLclZWpDgBqwMwWC+Ua3uMOF5kvPWBiLzwAhksOhiP7yM4nsMc/BzTRKLCJZBS2NhxlP0wZp1owbKSGXPTob8kxF0viuavhORExrKnsq/wG3IBLlZhpED5FRQEZ5qm6Kv9J8BlHPI5Sf30+RH8L+sH/HPMVypV8dfQYnQRndVEWSbMa9kg5ScEOFHhD5qxdBCUkuZBH8Ls6ynKSDQ4KK8mz8QW0haFIHyfhLxo2zNWUzeRUdtESryFXlZJQUwbMKDhEZ0cJ5EEFTLOmgRahEa4Qa8xrLwToIJRxUroph9Ae6GZUw4A8tgWYu8n2k59AGwTFmU97SFuM+DdbABgeYEsRcbi7nJ83HcEgoRdlYRMY3XpFUkLoM2ppy96KaJ9FBTB/quRGMKL8qPEQHhwQJ0au/y02InFXQktzU5p4R1ChSdXCAcYk/Gd4FWZbzM1yPIQxQqr+5vWD+oX9SQcwOGcLw4mwS22eKn8MhlcOgI3JCTtFp4RTbVNFNt5huxSdroZfeQb9XOFheQtbBijK2hceDZEdM0kHL44UumDaJw9fXl5IVMDQcY+n1zBiKjXSQqHQlcFuRUfBH0EFYNxnsaySCzduXrwrCtN9pxOK+2cFCb6ODX2r02Lbd/LuXZhWEAOBdxN3BVsFEkwpiEHbs65r7FECTrIRc+srD/KaMPSLf15jnEPelQeD8ZZfuJ1oI97YEK3CIvAUl7HfFcom/u5bGk3Ww35dMX77Eslf/saDn8O8+/wBm3ZAARqcBTwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/3aa0d6af3c3c492aa85dcd2e67d4d0225204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304F697', 'pago');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `nascimento` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `afiliado` varchar(255) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `cep` text DEFAULT NULL,
  `chave_pix` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `nascimento`, `senha`, `cpf`, `telefone`, `email`, `afiliado`, `endereco`, `cep`, `chave_pix`) VALUES
(2, 'Athilson ', '640920231203', '', '5316e12ef0730073dd193b0d3dc82973', '060.757.371-62', '(67) 29292-929', 'Athilsonjunior@gmail.com', '', NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `access_log`
--
ALTER TABLE `access_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Índices de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ezzebank`
--
ALTER TABLE `ezzebank`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `financeiro`
--
ALTER TABLE `financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `financeiro_config`
--
ALTER TABLE `financeiro_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fiverscan`
--
ALTER TABLE `fiverscan`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `indicacoes`
--
ALTER TABLE `indicacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `minSaqueAutomatico`
--
ALTER TABLE `minSaqueAutomatico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `populares`
--
ALTER TABLE `populares`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `saques`
--
ALTER TABLE `saques`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `suitpay`
--
ALTER TABLE `suitpay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `access_log`
--
ALTER TABLE `access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `financeiro`
--
ALTER TABLE `financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `financeiro_config`
--
ALTER TABLE `financeiro_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1344;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `indicacoes`
--
ALTER TABLE `indicacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de tabela `minSaqueAutomatico`
--
ALTER TABLE `minSaqueAutomatico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `populares`
--
ALTER TABLE `populares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `saques`
--
ALTER TABLE `saques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
