-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-21 13:57:10
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db_sa`
--

-- --------------------------------------------------------

--
-- 資料表結構 `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_phone` varchar(45) NOT NULL,
  `admin_password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `admin_phone`, `admin_password`) VALUES
(1, '周', '0974095063', '12345678u');

-- --------------------------------------------------------

--
-- 資料表結構 `tb_member`
--

CREATE TABLE `tb_member` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `member_icno` varchar(45) NOT NULL,
  `member_phone` varchar(45) NOT NULL,
  `member_password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tb_member`
--

INSERT INTO `tb_member` (`member_id`, `member_name`, `member_icno`, `member_phone`, `member_password`) VALUES
(1, '周小傑', 'F12345678', '0912123123', '12345678a'),
(4, '123213', 'U123456789', '0974095063', '1232131232a');

-- --------------------------------------------------------

--
-- 資料表結構 `tb_private`
--

CREATE TABLE `tb_private` (
  `private_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `dog_name` varchar(45) DEFAULT NULL,
  `dog_type` varchar(45) NOT NULL,
  `dog_gender` varchar(45) NOT NULL,
  `dog_size` varchar(45) NOT NULL,
  `dog_appearance` varchar(45) NOT NULL,
  `dog_age` varchar(45) NOT NULL,
  `dog_ligation` varchar(45) NOT NULL,
  `dog_area` varchar(45) NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `contact_phone` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tb_private`
--

INSERT INTO `tb_private` (`private_id`, `member_id`, `member_name`, `dog_name`, `dog_type`, `dog_gender`, `dog_size`, `dog_appearance`, `dog_age`, `dog_ligation`, `dog_area`, `contact_name`, `contact_phone`, `description`, `status`, `image`) VALUES
(2, 4, '周恩傑', 'Jay', '松鼠博美', '母', '小型犬', '白色', '12', '是', '台北', '周恩傑', '0974095063', '會後空翻', '通過審查', 'dog1.jpg'),
(4, 1, '周小傑', '餅乾', '八哥', '公', '小型犬', '白色', '35', '否', '台中', '周小傑', '0912123123', '會打網球', '通過審查', 'd6.jpg'),
(5, 1, '周小傑', '阿傑', '紅貴賓', '母', '小型犬', '棕色', '70', '是', '台中', '周小傑', '0912123123', '會講脫口秀', '通過審查', 'd7.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `tb_public`
--

CREATE TABLE `tb_public` (
  `public_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `dog_name` varchar(45) DEFAULT NULL,
  `dog_type` varchar(45) NOT NULL,
  `dog_gender` varchar(45) NOT NULL,
  `dog_size` varchar(45) NOT NULL,
  `dog_appearance` varchar(45) NOT NULL,
  `dog_age` varchar(45) NOT NULL,
  `dog_ligation` varchar(45) NOT NULL,
  `dog_area` varchar(45) NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `contact_phone` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tb_public`
--

INSERT INTO `tb_public` (`public_id`, `admin_id`, `admin_name`, `dog_name`, `dog_type`, `dog_gender`, `dog_size`, `dog_appearance`, `dog_age`, `dog_ligation`, `dog_area`, `contact_name`, `contact_phone`, `description`, `image`) VALUES
(2, 1, 'jay', '哈密瓜', '哈士奇', '女', '大型犬', '黑白相間', '6', '否', '台東池上', '台東流浪狗之家', '038245577', '眼睛很凸，看起來很白目', 'd5.jpg'),
(3, 1, 'jay', '姬巴巴', '吉娃娃', '女', '小型犬', '卡其', '14', '是', '新北三重', '狗狗中心', '0972377488', '感覺沒被揍過', 'dog3.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `tb_seeking`
--

CREATE TABLE `tb_seeking` (
  `seeking_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `dog_name` varchar(45) DEFAULT NULL,
  `dog_type` varchar(45) NOT NULL,
  `dog_gender` varchar(45) NOT NULL,
  `dog_size` varchar(45) NOT NULL,
  `dog_time` varchar(45) NOT NULL,
  `dog_area` varchar(45) NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `contact_phone` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tb_seeking`
--

INSERT INTO `tb_seeking` (`seeking_id`, `member_id`, `member_name`, `dog_name`, `dog_type`, `dog_gender`, `dog_size`, `dog_time`, `dog_area`, `contact_name`, `contact_phone`, `description`, `status`, `image`) VALUES
(1, 4, '周恩傑', '鬆餅', '鬆獅犬', '女', '中型犬', '2023/5/4 早上十點', '桃園市中壢區', '周恩傑', '0954534345', '有項圈，穿一件哆啦a夢的衣服', '通過審查', 'd1.jpg'),
(2, 4, '周恩傑', '大香腸', '臘腸狗', '男', '小型犬', '2023/6/7 下午8點', '宜蘭縣三星鄉', '周恩傑', '0954534345', '鼻子咖啡，身體黑', '通過審查', 'd4.jpg'),
(3, 1, '周小傑', '大金毛', '黃金獵犬', '男', '大型犬', '1999/1/1 早上五點', '台北市信義區', '周小傑', '0912123123', '真的很大，眼睛很黑', '未通過', 'd2.jpg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- 資料表索引 `tb_member`
--
ALTER TABLE `tb_member`
  ADD PRIMARY KEY (`member_id`);

--
-- 資料表索引 `tb_private`
--
ALTER TABLE `tb_private`
  ADD PRIMARY KEY (`private_id`),
  ADD KEY `private_member_id_tbl_member_id_idx` (`member_id`);

--
-- 資料表索引 `tb_public`
--
ALTER TABLE `tb_public`
  ADD PRIMARY KEY (`public_id`),
  ADD KEY `admin_id_tbl_admin_admin_id_idx` (`admin_id`);

--
-- 資料表索引 `tb_seeking`
--
ALTER TABLE `tb_seeking`
  ADD PRIMARY KEY (`seeking_id`),
  ADD KEY `member_id_tbl_member_member_id_idx` (`member_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tb_member`
--
ALTER TABLE `tb_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tb_private`
--
ALTER TABLE `tb_private`
  MODIFY `private_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tb_public`
--
ALTER TABLE `tb_public`
  MODIFY `public_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tb_seeking`
--
ALTER TABLE `tb_seeking`
  MODIFY `seeking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `tb_private`
--
ALTER TABLE `tb_private`
  ADD CONSTRAINT `private_member_id_tbl_member_id` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`member_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `tb_public`
--
ALTER TABLE `tb_public`
  ADD CONSTRAINT `admin_id_tbl_admin_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `tb_seeking`
--
ALTER TABLE `tb_seeking`
  ADD CONSTRAINT `member_id_tbl_member_member_id` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`member_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
