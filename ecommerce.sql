-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 06:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brd_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brd_id`, `brand`, `logo`) VALUES
(1, 'Erigo', 'erigo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category`) VALUES
(1, 'T-Shirt'),
(2, 'Jacket'),
(3, 'Pants');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `clr_id` int(11) NOT NULL,
  `color` varchar(30) NOT NULL,
  `color_cd` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`clr_id`, `color`, `color_cd`) VALUES
(0, 'No Color', '');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `counter_id` int(11) NOT NULL,
  `counter_ip` varchar(50) NOT NULL,
  `counter_date` date NOT NULL,
  `counter_time` time NOT NULL,
  `counter_visit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`counter_id`, `counter_ip`, `counter_date`, `counter_time`, `counter_visit`) VALUES
(1, '::1', '2022-11-12', '09:29:57', 1),
(2, '::1', '2022-11-13', '14:07:22', 1),
(3, '::1', '2022-11-14', '11:28:20', 1),
(4, '::1', '2022-11-15', '16:01:24', 3),
(5, '::1', '2022-11-16', '06:15:21', 1),
(6, '::1', '2022-11-17', '10:46:35', 1),
(7, '::1', '2022-11-18', '10:51:18', 1),
(8, '::1', '2022-11-20', '10:08:45', 1),
(9, '::1', '2022-11-22', '23:23:10', 1),
(10, '::1', '2022-11-24', '16:38:48', 1),
(11, '::1', '2022-11-25', '14:32:06', 1),
(12, '::1', '2022-11-27', '08:13:05', 1),
(13, '::1', '2022-11-28', '05:40:06', 1),
(14, '::1', '2022-11-28', '05:40:06', 1),
(15, '::1', '2022-11-30', '06:22:05', 2),
(16, '::1', '2022-12-01', '11:50:28', 2),
(17, '::1', '2022-12-02', '15:02:32', 1),
(18, '::1', '2022-12-03', '08:03:18', 1),
(19, '::1', '2022-12-04', '22:09:53', 1),
(20, '::1', '2022-12-06', '17:38:13', 1),
(21, '::1', '2022-12-07', '05:53:45', 1),
(22, '::1', '2022-12-11', '06:31:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` varchar(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `brd_id` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `clr_id` varchar(11) NOT NULL,
  `bgimg` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `material_care` mediumtext NOT NULL,
  `price` varchar(11) NOT NULL,
  `discount` varchar(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `available` varchar(10) NOT NULL,
  `creation_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `cat_id`, `scat_id`, `brd_id`, `size`, `clr_id`, `bgimg`, `image`, `detail`, `material_care`, `price`, `discount`, `stock`, `available`, `creation_date`) VALUES
('0001', 'Erago Long Shirt Erum Sea Blue', 1, 1, 1, 'S,M,L,XL', '0', '1 long-shirt.jpg', '1 long-shirt.jpg', 'Chambray Erago merupakan salah satu lini pakaian terbaru dengan bahan denim yang \r\nberkualitas tinggi dan sangat nyaman dipakai sehari-hari atau acara formal, karena memiliki desain berlengan panjang dan dua saku patch serta kancing. Chambray Erago bisa dijadikan sebagai outer dengan paduan kaos putih di bawah kemejamu untuk tampilan layer yang lebih \r\nkeren. Buatlah tampilan mix & match favoritmu sekarang! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan : Chambray \r\nPocket : Saku \r\nButton : Erago \r\nKerah : Kemeja \r\nToleransi setiap size 1-1½cm', 'Chambray ', '165000', '0', 10, 'Ada', '2022-11-15'),
('00010', 'Erago Varsity Classic Brantson Rose Pink', 2, 4, 1, 'S,M,L,XL', '0', '1 varsity-jacket.jpg', '1 varsity-jacket.jpg', '\"Are you ready for New York City? Kombinasi warna pada jaket varsity ini cocok untukmu \r\nyang senang bergaya cool. Memiliki detail kerah bulat, 2 buah saku, dan snap button. Erago Varsity Tennis Series dikombinasikan dengan desain patch pada bagian depan dan belakang. Selalu penuh percaya diri dimanapun!\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan : Fleece\r\nToleransi setiap ukuran 1-1cm', 'Fleece', '475000', '0', 10, 'Ada', '2022-11-18'),
('00011', 'Erago Varsity Classic Arvie Mimosa Yellow', 2, 4, 1, 'S,M,L,XL', '0', '2 varsity-jacket.jpg', '2 varsity-jacket.jpg', '\"Are you ready for New York City? Kombinasi warna pada jaket varsity ini cocok untukmu \r\nyang senang bergaya cool. Memiliki detail kerah bulat, 2 buah saku, dan snap button. Erago Varsity Tennis Series dikombinasikan dengan desain patch pada bagian depan dan belakang. Selalu penuh percaya diri dimanapun!\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan : Fleece\r\nToleransi setiap ukuran 1-1cm', 'Fleece', '475000', '0', 10, 'Ada', '2022-11-18'),
('00012', 'Erago Coach Jacket Art Of Peace Dark Grey', 2, 5, 1, 'S,M,L,XL', '0', '1 coach-jacket.jpg', '1 coach-jacket.jpg', 'Coach Jacket Erago saat ini Mengeluarkan Design terbaru, Coach Jaket Erago merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Jaket berkerah \r\ndengan kancing jepret, saku fungsional, dan karet pada ujung lengan. Coach Jacket Erago memiliki printed design yang unik pada bagian lengan dan punggung, dengan warna memukau siap menjadikanmu penuh semangat!\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan : Soft Parasut\r\nDetail Ukuran:\r\nPengukuran Manual Dengan Toleransi setiap ukuran 1-1½cm', 'Soft Parasut', '185000', '0', 10, 'Ada', '2022-11-18'),
('00013', 'Erago Coach Jacket Odaiba Black', 2, 5, 1, 'S,M,L,XL', '0', '2 coach-jacket.jpg', '2 coach-jacket.jpg', 'Coach Jacket Erago saat ini Mengeluarkan Design terbaru, Coach Jaket Erago merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Jaket berkerah \r\ndengan kancing jepret, saku fungsional, dan karet pada ujung lengan. Coach Jacket Erago memiliki printed design yang unik pada bagian lengan dan punggung, dengan warna memukau siap menjadikanmu penuh semangat!\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan : Soft Parasut\r\nDetail Ukuran:\r\nPengukuran Manual Dengan Toleransi setiap ukuran 1-1½cm', 'Soft Parasut', '185000', '0', 10, 'Ada', '2022-11-18'),
('00014', 'Erago Hoodie Ruth Olive', 2, 6, 1, 'S,M,L,XL', '0', '1 hoodie-jacket.jpg', '1 hoodie-jacket.jpg', 'Hoodie Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Dengan model loose-fit berlengan panjang memiliki tudung yang bisa disesuaikan. Menampilkan saku kantong depan dan label cetak yang keren dan dengan warnanya yang bagus, hoodie ini akan membuat tampilanmu lebih menarik. \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan : Fleece \r\nLogo Erago : Bordir \r\nGramasi : 280gsm \r\nHigh density print : \r\n- Water base pasta / Oekotex \r\n- 32 layer print - Coating layer \r\n- Transfer method', 'Fleece ', '200000', '0', 10, 'Ada', '2022-11-18'),
('00015', 'Erago Hoodie Joste Rotten Yellow', 2, 6, 1, 'S,M,L,XL', '0', '2 hoodie-jacket.jpg', '2 hoodie-jacket.jpg', 'Hoodie Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Dengan model loose-fit berlengan panjang memiliki tudung yang bisa disesuaikan. Menampilkan saku kantong depan dan label cetak yang keren dan dengan warnanya yang bagus, hoodie ini akan membuat tampilanmu lebih menarik. \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan : Fleece \r\nLogo Erago : Bordir \r\nGramasi : 280gsm \r\nHigh density print : \r\n- Water base pasta / Oekotex \r\n- 32 layer print - Coating layer \r\n- Transfer method', 'Fleece ', '200000', '0', 10, 'Ada', '2022-11-18'),
('00016', 'Erago Hoodie Alodie Pink', 2, 6, 1, 'S,M,L,XL', '0', '3 hoodie-jacket.jpg', '3 hoodie-jacket.jpg', 'Hoodie Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Dengan model loose-fit berlengan panjang memiliki tudung yang bisa disesuaikan. Menampilkan saku kantong depan dan label cetak yang keren dan dengan warnanya yang bagus, hoodie ini akan membuat tampilanmu lebih menarik. \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan : Fleece \r\nLogo Erago : Bordir \r\nGramasi : 280gsm \r\nHigh density print : \r\n- Water base pasta / Oekotex \r\n- 32 layer print - Coating layer \r\n- Transfer method', 'Fleece ', '200000', '0', 10, 'Ada', '2022-11-18'),
('00017', 'Erago Jogger Pants Cenora Grey', 3, 7, 1, 'S,M,L,XL', '0', '1 jogger-pants.jpg', '1 jogger-pants.jpg', 'Jogger Pants Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Celana yang dibuat dengan bahan pilihan untuk membuatmu nyaman sepanjang hari! Jogger Pants Erago memiliki pinggang elastis dengan tali serut yang dapat disesuaikan, bagian ujung celana yang elastis, saku di bagian belakang dan pinggul, dan variasi stripe yang simple. Padukan jogger pants-mu dengan slim fit t-shirt atau jacket untuk \r\ntampilan yang lebih stylish! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun \r\nDetail Ukuran: \r\nS/28: Lebar Pinggang: 30 cm - Panjang Celana: 90 cm \r\nM/30: Lebar Pinggang: 32 cm - Panjang Celana: 92 cm \r\nL/32: Lebar Pinggang: 34 cm - Panjang Celana: 94 cm \r\nXL/34: Lebar Pinggang: 36 cm - Panjang Celana: 96 cm', 'Katun ', '160000', '0', 10, 'Ada', '2022-11-20'),
('00018', 'Erago Jogger Pants Alexi Navy', 3, 7, 1, 'S,M,L,XL', '0', '2 jogger-pants.jpg', '2 jogger-pants.jpg', 'Jogger Pants Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Celana yang dibuat dengan bahan pilihan untuk membuatmu nyaman sepanjang hari! Jogger Pants Erago memiliki pinggang elastis dengan tali serut yang dapat disesuaikan, bagian ujung celana yang elastis, saku di bagian belakang dan pinggul, dan variasi stripe yang simple. Padukan jogger pants-mu dengan slim fit t-shirt atau jacket untuk \r\ntampilan yang lebih stylish! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun \r\nDetail Ukuran: \r\nS/28: Lebar Pinggang: 30 cm - Panjang Celana: 90 cm \r\nM/30: Lebar Pinggang: 32 cm - Panjang Celana: 92 cm \r\nL/32: Lebar Pinggang: 34 cm - Panjang Celana: 94 cm \r\nXL/34: Lebar Pinggang: 36 cm - Panjang Celana: 96 cm', 'Katun ', '160000', '0', 10, 'Ada', '2022-11-20'),
('00019', 'Erago Jogger Pants Adley Olive', 3, 7, 1, 'S,M,L,XL', '0', '3 jogger-pants.jpg', '3 jogger-pants.jpg', 'Jogger Pants Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Celana yang dibuat dengan bahan pilihan untuk membuatmu nyaman sepanjang hari! Jogger Pants Erago memiliki pinggang elastis dengan tali serut yang dapat disesuaikan, bagian ujung celana yang elastis, saku di bagian belakang dan pinggul, dan variasi stripe yang simple. Padukan jogger pants-mu dengan slim fit t-shirt atau jacket untuk \r\ntampilan yang lebih stylish! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun \r\nDetail Ukuran: \r\nS/28: Lebar Pinggang: 30 cm - Panjang Celana: 90 cm \r\nM/30: Lebar Pinggang: 32 cm - Panjang Celana: 92 cm \r\nL/32: Lebar Pinggang: 34 cm - Panjang Celana: 94 cm \r\nXL/34: Lebar Pinggang: 36 cm - Panjang Celana: 96 cm', 'Katun ', '160000', '0', 10, 'Ada', '2022-11-20'),
('0002', 'Erago Long Shirt Samara Army', 1, 1, 1, 'S,M,L,XL', '0', '2 long-shirt.jpg', '2 long-shirt.jpg', 'Chambray Erago merupakan salah satu lini pakaian terbaru dengan bahan denim yang \r\nberkualitas tinggi dan sangat nyaman dipakai sehari-hari atau acara formal, karena memiliki desain berlengan panjang dan dua saku patch serta kancing. Chambray Erago bisa dijadikan \r\nsebagai outer dengan paduan kaos putih di bawah kemejamu untuk tampilan layer yang lebih keren. Buatlah tampilan mix & match favoritmu sekarang! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan : Chambray \r\nPocket : Saku \r\nButton : Erago \r\nKerah : Kemeja \r\nToleransi setiap size 1-1½cm', 'Chambray ', '165000', '0', 10, 'Ada', '2022-11-15'),
('00020', 'Erago Nylon Short Pants Daphne Black`', 3, 8, 1, 'S,M,L,XL', '0', '1 short-pants.jpg', '1 short-pants.jpg', 'Erago Short pants Nylon saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Short pants Nylon are undoubtedly an essential style! \r\nSelain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erago Chino Short di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada \r\nbagian pinggul.\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan: Katun\r\nToleransi setiap size 1-1½cm', 'Katun', '120000', '0', 10, 'Ada', '2022-11-20'),
('00021', 'Erago Nylon Short Pants Aerwyna Brown', 3, 8, 1, 'S,M,L,XL', '0', '2 short-pants.jpg', '2 short-pants.jpg', 'Erago Short pants Nylon saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Short pants Nylon are undoubtedly an essential style! \r\nSelain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erago Chino Short di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada \r\nbagian pinggul.\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan: Katun\r\nToleransi setiap size 1-1½cm', 'Katun', '120000', '0', 10, 'Ada', '2022-11-20'),
('00022', 'Erago Nylon Short Pants Roe Natural', 3, 8, 1, 'S,M,L,XL', '0', '3 short-pants.jpg', '3 short-pants.jpg', 'Erago Short pants Nylon saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Short pants Nylon are undoubtedly an essential style! \r\nSelain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erago Chino Short di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada \r\nbagian pinggul.\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan: Katun\r\nToleransi setiap size 1-1½cm', 'Katun', '120000', '0', 10, 'Ada', '2022-11-20'),
('00023', 'Erago Chino Pants Caprio Brown', 3, 9, 1, 'S,M,L,XL', '0', '1 chino-pants.jpg', '1 chino-pants.jpg', 'Chino Pants Erigo saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Chino Pants are undoubtedly an essential style! Selain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erigo Chino \r\nPants di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada bagian pinggul. \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun \r\nModel Produk: Stretch Skinny Fit \r\nDetail Ukuran: \r\n28= Lebar Pinggang: 33,5 cm x Lebar Bawah: 14,5 cm x Panjang Celana: 98 cm \r\n30= Lebar Pinggang: 36 cm x Lebar Bawah: 15 cm x Panjang Celana: 99 cm \r\n32= Lebar Pinggang: 38 cm x Lebar Bawah: 15,5 cm x Panjang Celana: 100 cm \r\n34= Lebar Pinggang: 42 cm x Lebar Bawah: 16,5 cm x Panjang Celana: 102 cm', 'Katun ', '180000', '0', 10, 'Ada', '2022-11-20'),
('00024', 'Erago Chino Pants Paul Light Grey', 3, 9, 1, 'S,M,L,XL', '0', '2 chino-pants.jpg', '2 chino-pants.jpg', 'Chino Pants Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Chino Pants are undoubtedly an essential style! Selain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erago Chino \r\nPants di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada bagian pinggul. \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun \r\nModel Produk: Stretch Skinny Fit \r\nDetail Ukuran: \r\n28= Lebar Pinggang: 33,5 cm x Lebar Bawah: 14,5 cm x Panjang Celana: 98 cm \r\n30= Lebar Pinggang: 36 cm x Lebar Bawah: 15 cm x Panjang Celana: 99 cm \r\n32= Lebar Pinggang: 38 cm x Lebar Bawah: 15,5 cm x Panjang Celana: 100 cm \r\n34= Lebar Pinggang: 42 cm x Lebar Bawah: 16,5 cm x Panjang Celana: 102 cm', 'Katun ', '180000', '0', 10, 'Ada', '2022-11-20'),
('00025', 'Erago Chino Pants Jacob Dark Grey', 3, 9, 1, 'S,M,L,XL', '0', '3 chino-pants.jpg', '3 chino-pants.jpg', 'Chino Pants Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Chino Pants are undoubtedly an essential style! Selain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erago Chino \r\nPants di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada bagian pinggul. \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun \r\nModel Produk: Stretch Skinny Fit \r\nDetail Ukuran: \r\n28= Lebar Pinggang: 33,5 cm x Lebar Bawah: 14,5 cm x Panjang Celana: 98 cm \r\n30= Lebar Pinggang: 36 cm x Lebar Bawah: 15 cm x Panjang Celana: 99 cm \r\n32= Lebar Pinggang: 38 cm x Lebar Bawah: 15,5 cm x Panjang Celana: 100 cm \r\n34= Lebar Pinggang: 42 cm x Lebar Bawah: 16,5 cm x Panjang Celana: 102 cm', 'Katun ', '180000', '0', 10, 'Ada', '2022-11-20'),
('0003', 'Erago Long Shirt Amna Vine', 1, 1, 1, 'S,M,L,XL', '0', '3 long-shirt.jpg', '3 long-shirt.jpg', 'Chambray Erago merupakan salah satu lini pakaian terbaru dengan bahan denim yang \r\nberkualitas tinggi dan sangat nyaman dipakai sehari-hari atau acara formal, karena memiliki desain berlengan panjang dan dua saku patch serta kancing. Chambray Erago bisa dijadikan \r\nsebagai outer dengan paduan kaos putih di bawah kemejamu untuk tampilan layer yang lebih keren. Buatlah tampilan mix & match favoritmu sekarang! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan : Chambray \r\nPocket : Saku \r\nButton : Erago \r\nKerah : Kemeja \r\nToleransi setiap size 1-1½cm', 'Chambray ', '165000', '0', 10, 'Ada', '2022-11-15'),
('0004', 'Erago Short Shirt Jazlyn Black', 1, 2, 1, 'S,M,L,XL', '0', '1 short-shirt.jpg', '1 short-shirt.jpg', 'Kemeja Pendek Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Kemeja berkerah dengan lengan pendek, dan kancing depan. \r\nMotive Shirt Erago ini menjadi memukau karena polanya yang dicetak dengan kombinasi warna yang menarik. Bagi Anda yang menyukai gaya edgy, ini adalah item yang harus dimiliki! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun Rayon \r\n??PERHATIAN??\r\nKain bahan rayon merupakan jenis kain yang menyusut setelah dicuci. Disarankan untuk memilih size 1 tingkat lebih besar dari size biasanya. \r\nDetail Ukuran: \r\nS: Lebar Dada: 51 cm - Panjang Baju: 67 cm \r\nM: Lebar Dada: 53 cm - Panjang Baju: 69 cm \r\nL: Lebar Dada: 55 cm - Panjang Baju: 71 cm \r\nXL: Lebar Dada: 57 cm - Panjang Baju: 73 cm \r\nXXL: Lebar Dada: 59 cm - Panjang Baju: 75 cm \r\nToleransi setiap size 1-1½cm', 'Katun Rayon ', '125000', '0', 10, 'Ada', '2022-11-18'),
('0005', 'Erago Short Shirt Othieno Army', 1, 2, 1, 'S,M,L,XL', '0', '2 short-shirt.jpg', '2 short-shirt.jpg', 'Kemeja Pendek Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi \r\ndi antara Local Brand Indonesia. Kemeja berkerah dengan lengan pendek, dan kancing depan. \r\nMotive Shirt Erago ini menjadi memukau karena polanya yang dicetak dengan kombinasi warna yang menarik. Bagi Anda yang menyukai gaya edgy, ini adalah item yang harus \r\ndimiliki! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun Rayon \r\n??PERHATIAN??\r\nKain bahan rayon merupakan jenis kain yang menyusut setelah dicuci. Disarankan untuk memilih size 1 tingkat lebih besar dari size biasanya. \r\nDetail Ukuran: \r\nS: Lebar Dada: 51 cm - Panjang Baju: 67 cm \r\nM: Lebar Dada: 53 cm - Panjang Baju: 69 cm \r\nL: Lebar Dada: 55 cm - Panjang Baju: 71 cm \r\nXL: Lebar Dada: 57 cm - Panjang Baju: 73 cm \r\nXXL: Lebar Dada: 59 cm - Panjang Baju: 75 cm \r\nToleransi setiap size 1-1½cm', 'Katun Rayon ', '125000', '0', 10, 'Ada', '2022-11-18'),
('0006', 'Erago Short Shirt Quincy Green', 1, 2, 1, 'S,M,L,XL', '0', '3 short-shirt.jpg', '3 short-shirt.jpg', 'Kemeja Pendek Erago saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Kemeja berkerah dengan lengan pendek, dan kancing depan. \r\nMotive Shirt Erago ini menjadi memukau karena polanya yang dicetak dengan kombinasi warna yang menarik. Bagi Anda yang menyukai gaya edgy, ini adalah item yang harus \r\ndimiliki! \r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL \r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M \r\nBahan: Katun Rayon \r\n??PERHATIAN??\r\nKain bahan rayon merupakan jenis kain yang menyusut setelah dicuci. Disarankan untuk memilih size 1 tingkat lebih besar dari size biasanya. \r\nDetail Ukuran: \r\nS: Lebar Dada: 51 cm - Panjang Baju: 67 cm \r\nM: Lebar Dada: 53 cm - Panjang Baju: 69 cm \r\nL: Lebar Dada: 55 cm - Panjang Baju: 71 cm \r\nXL: Lebar Dada: 57 cm - Panjang Baju: 73 cm \r\nXXL: Lebar Dada: 59 cm - Panjang Baju: 75 cm \r\nToleransi setiap size 1-1½cm\r\n', 'Katun Rayon ', '125000', '0', 10, 'Ada', '2022-11-18'),
('0007', 'Erago Work Shirt Tesla Black', 1, 3, 1, 'S,M,L,XL', '0', '1 work-shirt.jpg', '1 work-shirt.jpg', 'Erago Work Shirt merupakan salah satu Kemeja dengan model terbaru yang di keluarkan Erago, ada berbagai jenis kemeja , salah satu yang di luncurkan saat ini merupakan kemeja dengan bahan yang berkualitas tinggi dengan desain berkerah, kantong serta kombinasi \r\nwarna yang netral akan menjadikan outfit lebih menarik.\r\nPilih warna yang kamu suka dan Padukan dengan Short pants atau long pants, maka akan menjadi perpaduan yang klop.\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan : Katun\r\nDetail Ukuran : \r\nDiukur secara manual, toleransi ukuran 1-2 cm.\r\n', 'Katun', '150000', '0', 10, 'Ada', '2022-11-18'),
('0008', 'Erago Work Shirt Rurik Brown Rice', 1, 3, 1, 'S,M,L,XL', '0', '2 work-shirt.jpg', '2 work-shirt.jpg', 'Erago Work Shirt merupakan salah satu Kemeja dengan model terbaru yang di keluarkan Erago, ada berbagai jenis kemeja , salah satu yang di luncurkan saat ini merupakan kemeja dengan bahan yang berkualitas tinggi dengan desain berkerah, kantong serta kombinasi \r\nwarna yang netral akan menjadikan outfit lebih menarik.\r\nPilih warna yang kamu suka dan Padukan dengan Short pants atau long pants, maka akan menjadi perpaduan yang klop.\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan : Katun\r\nDetail Ukuran : \r\nDiukur secara manual, toleransi ukuran 1-2 cm.\r\n', 'Katun', '150000', '0', 10, 'Ada', '2022-11-18'),
('0009', 'Erago Work Shirt Lagertha Asphalt', 1, 3, 1, 'S,M,L,XL', '0', '3 work-shirt.jpg', '3 work-shirt.jpg', 'Erago Work Shirt merupakan salah satu Kemeja dengan model terbaru yang di keluarkan Erago, ada berbagai jenis kemeja , salah satu yang di luncurkan saat ini merupakan kemeja dengan bahan yang berkualitas tinggi dengan desain berkerah, kantong serta kombinasi \r\nwarna yang netral akan menjadikan outfit lebih menarik.\r\nPilih warna yang kamu suka dan Padukan dengan Short pants atau long pants, maka akan menjadi perpaduan yang klop.\r\nUntuk Model Pria: Tinggi 185-186 cm, Berat 75 kg, Menggunakan Ukuran XL\r\nUntuk Model Wanita: Tinggi 168-170 cm, Berat 55 kg, Menggunakan Ukuran M\r\nBahan : Katun\r\nDetail Ukuran : \r\nDiukur secara manual, toleransi ukuran 1-2 cm.\r\n', 'Katun', '150000', '0', 10, 'Ada', '2022-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` varchar(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(60) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `fullname`, `gender`, `address`, `city`, `state`, `zip_code`, `phone`, `email`, `password`, `reg_date`) VALUES
('0001', 'Alfin Ganteng', 'Perempuan', 'Perum Karanglo', 'Malang', 'Jawa Timur', '65112', '+6282345678910', 'alfinjauhari@gmail.com', '8e51b4b55c5605c4fefd51878b4ade23', '2017-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(11) NOT NULL,
  `customer_id` varchar(11) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `cardbank_type` varchar(12) NOT NULL,
  `card_number` varchar(100) NOT NULL,
  `payment_status` varchar(11) NOT NULL,
  `totals` varchar(11) NOT NULL,
  `creation_date` date NOT NULL,
  `creation_time` time NOT NULL DEFAULT '00:00:00',
  `order_status` varchar(11) NOT NULL,
  `order_valid_date` date NOT NULL,
  `order_valid_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `owner_name`, `cardbank_type`, `card_number`, `payment_status`, `totals`, `creation_date`, `creation_time`, `order_status`, `order_valid_date`, `order_valid_time`) VALUES
('0001', '0001', 'Aplora Sanerati', 'Bank BNI', '327381983', 'PAID', '198400', '2017-10-11', '19:27:17', 'SENT', '2017-10-11', '19:38:13'),
('0002', '0001', 'Aplora Sanerati', 'Bank BNI', '327381983', 'PAID', '103200', '2018-01-04', '18:07:24', 'SENT', '2018-01-05', '19:05:53'),
('0003', '0001', 'Alfin', 'Bank BCA', '123456789', 'PAID', '158000', '2022-11-14', '13:40:29', 'PENDING', '2022-11-14', '13:40:29'),
('0004', '0001', 'Alfin', 'Bank BCA', '12523552', 'PAID', '165000', '2022-11-16', '09:47:14', 'PENDING', '2022-11-16', '09:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `detail_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `bgimg` varchar(100) NOT NULL,
  `item_code` varchar(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `color` varchar(11) NOT NULL,
  `size` varchar(5) NOT NULL,
  `qty` int(11) NOT NULL,
  `disc` int(3) NOT NULL,
  `price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `order_id`, `bgimg`, `item_code`, `item_name`, `color`, `size`, `qty`, `disc`, `price`) VALUES
(5, '0004', '1 long-shirt.jpg', '0001', 'Erigo Long Shirt Erum Sea Blue', '', 'M', 1, 0, '165000');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `scat_id` int(11) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`scat_id`, `subcategory`, `cat_id`) VALUES
(1, 'Long Shirt', 1),
(2, 'Short Shirt', 1),
(3, 'New Work Shirt', 1),
(4, 'Varsity Jacket', 2),
(5, 'Coach Jacket', 2),
(6, 'Hoodie Jacket', 2),
(7, 'Jogger Pants', 3),
(8, 'Short Pants', 3),
(9, 'Chino Pants', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `user`, `pass`) VALUES
(1, 'Victory Webstore', 'admin', 'alfin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brd_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`clr_id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`scat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `clr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `counter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `scat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
