/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - bita
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bita` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `bita`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2024_04_09_040447_create_products_table',2),
(5,'2024_04_09_041621_create_product_table',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`image`,`price`,`updated_at`,`created_at`) values 
(1,'LBF401S5YS - Bộ 5 hộp bảo quản hình chữ nhật Lock&Lock Bisfree Modular (LBF401x4, LBF404x1) - Màu nâu','https://lzd-img-global.slatic.net/g/p/641989d4fe4117557e8262afcd6148e9.jpg_400x400q75.jpg_.webp',387,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(2,'LLG224S3 - Bộ 3 hộp thủy tinh bảo quản thực phẩm Lock&Lock Euro (LLG214x2 LLG224x1)','https://lzd-img-global.slatic.net/g/ff/kf/Sbd9fc12386ac4747ba2a0deffd2337ed9.jpg_400x400q75.jpg_.webp',469,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(3,'Bộ cây lau bụi đa năng Microfiber Duster và đầu lau thay thế hiệu Lock&Lock ETM226','https://lzd-img-global.slatic.net/g/ff/kf/S436302dbea3148aeb48e272885173e2bW.jpg_400x400q75.jpg_.webp',186,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(4,'INP421LS3 - Set 3 thùng đựng đồ Lock&Lock thiết kế thông minh màu sắc trang nhã tiết kiệm không gian. Hàng chính hãng','https://lzd-img-global.slatic.net/g/ff/kf/Saac00e3d897c4a89bed67972be75dbb60.jpg_400x400q75.jpg_.webp',754,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(5,'Sạn xới cơm bằng Gỗ Rose Wood F00086 22.5x7.3cm. Hàng chính hãng Lock&Lock','https://lzd-img-global.slatic.net/g/p/b9b952c7ad301acb9f1fd43c4b468911.jpg_400x400q75.jpg_.webp',87,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(6,'Bình Đựng Nước Lock&Lock BISFREE ABF710 (500ml)','https://lzd-img-global.slatic.net/g/ff/kf/S542f9bf66710477b8f4152358c6d4780N.jpg_400x400q75.jpg_.webp',98,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(7,'Bình nước AQUA màu xanh nhãn hiệu Lock&Lock 2.6l - HAP739B','https://lzd-img-global.slatic.net/g/p/441595fe05819b83cddd44a9ee3d1503.jpg_400x400q75.jpg_.webp',87,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(8,'Cân sức khỏe điện tử Lock&Lock Body fat scale theo dõi các chỉ số cơ thể ENC541 - kết nối ứng dụng, đo 16 chỉ số','https://lzd-img-global.slatic.net/g/p/d322243ce196bca4fcb6c39c1956f10b.jpg_400x400q75.jpg_.webp',647,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(9,'Bộ Hộp Bảo Quản E.Z Lock Lock&Lock- P-00011Or-1320ml','https://lzd-img-global.slatic.net/g/p/459f95c2aea8f8069e9f98121df937f7.jpg_400x400q75.jpg_.webp',89,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(10,'Chảo sâu lòng chống dính kèm nắp Lock&Lock Master Deep 24cm LMD1245 - Có miệng rót, dùng được trên mọi loại bếp - Hàng chính hãng','https://lzd-img-global.slatic.net/g/p/d07c749e9337466db80ce6cc4704104f.jpg_400x400q75.jpg_.webp',1.326,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(11,'LHC6180 - Bình giữ nhiệt Lock&Lock Vacuum Bottle 800ml Thép không gỉ - Có dây xách, nhỏ gọn, giữ nhiệt 24h Giới hạn 5 sản phẩm/đơn hàng','https://lzd-img-global.slatic.net/g/p/ab6baecb41ad063f84916b7487127315.jpg_400x400q75.jpg_.webp',677,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(12,'Ca nước giữ nhiệt Lock&Lock Metro Table Mug 600ml LHC4282 - Có tay cầm, nắp trong suốt, giảm đổ mồ hôi ngoài thành bình - Hàng chính hãng','https://lzd-img-global.slatic.net/g/p/2e7f67459143d8bb42570ef9e5802769.jpg_400x400q75.jpg_.webp',475,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(13,'EJF357 - Nồi chiên không dầu Lock&Lock 5.2L - Cảm ứng, 7 chế độ nấu, Tỏa nhiệt đối lưu, Tặng khay bánh - Chính hãng - Bảo hành 2 năm','https://lzd-img-global.slatic.net/g/p/87e05f5ac9ace7ae937db03d68db1dfa.jpg_400x400q75.jpg_.webp',3.089,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(14,'Bình giữ nhiệt Lock&Lock Metro Two Way 475ml - LHC4274 (3 màu)- Có quai cầm - giữ nhiệt 8 tiếng - miệng rộng dễ bỏ đá/lau chùi','https://lzd-img-global.slatic.net/g/p/0f4cee8f8f30bb93e590e9e4750803f6.jpg_400x400q75.jpg_.webp',288,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(15,'LHC4138SLV - Bình giữ nhiệt Lock&Lock Swing Tumbler 880ml Thép không gỉ 304, Thân bình chống ngưng tụ nước - Hàng chính hãng','https://lzd-img-global.slatic.net/g/ff/kf/S969f51aeaea5472ab1cab4192a1d2704Z.jpg_400x400q75.jpg_.webp',560,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(16,'HLW114 - Gối Memory foam 50D Lock&Lock 61 x 34 x 10 cm - thiết kế êm ái, hỗ trợ giảm đau mỏi cổ khi ngủ - Hàng chính hãng','https://lzd-img-global.slatic.net/g/p/ec428756c549a74a772885f025925a9e.jpg_400x400q75.jpg_.webp',711,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(17,'LDE1204IH - Nồi nhôm chống dính Lock&Lock DECORE 20CM hai tay cầm - màu Navy, kèm nắp cùng màu, thành nồi cao, nồi hầm','https://lzd-img-global.slatic.net/g/p/270d010916cf4e1031ac0772788c34c0.jpg_400x400q75.jpg_.webp',1.122,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(18,'LHC4202 - Bình Giữ Nhiệt LocknLock Metro Double Tumbler - 470ml, có quai xách silicone, có lọc trà, giữ nhiệt nóng lạnh cả ngày','https://lzd-img-global.slatic.net/g/ff/kf/S450e72ebb5224600987935d7008ad5ffE.jpg_400x400q75.jpg_.webp',544,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(19,'LHC4160- Bình giữ nhiệt Riga Tumbler Lock&Lock 897ml Thép không gỉ, Có quai xách, 6 màu trẻ trung, giữ nhiệt 24h - Hàng chính hãng','https://lzd-img-global.slatic.net/g/p/81bd96ef519e6ccb99c350f664b92bf7.jpg_400x400q75.jpg_.webp',535,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(20,'Bộ túi hộp cơm thủy tinh Lock&Lock kèm túi (2 kích thước) LLG429DS2 - LLG428S2 - 2 hộp thủy tinh, 1 túi đựng cơm','https://lzd-img-global.slatic.net/g/p/bd32d874161d73315470ed3faddb2b68.jpg_400x400q75.jpg_.webp',511,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(21,'Hộp giữ nhiệt đựng thức ăn kèm muỗng Lock&Lock 700ml - LHC8042 - xanh/Hồng, Có quai xách, Kèm ngăn nhỏ','https://lzd-img-global.slatic.net/g/p/c5cb773549f491c5bee9cdbcb598910c.jpg_400x400q75.jpg_.webp',599,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(22,'Bàn là hơi nước cầm tay LocknLock Handy Steamer 300ml- màu trắng ENI222WHT bàn ủi hơi nước di động nhỏ gọn','src=\"https://lzd-img-global.slatic.net/g/p/2cfa3f70aefa30ad84d3cb7674608c3c.jpg_400x400q75.jpg_.webp\"',1.252,'2024-04-19 04:36:39','2024-04-19 04:36:39'),
(23,'LHC4125 - Bình giữ nhiêt NAME TUMBLER hiệu Lock&Lock 500ml - Thép không gỉ 304, nhỏ gọn, giữ nhiệt cả ngày - Giới hạn 5 sản phẩm/khách','https://lzd-img-global.slatic.net/g/ff/kf/S22326d53288447189f885943ec1d3b35T.jpg_400x400q75.jpg_.webp',482,'2024-04-19 04:36:39','2024-04-19 04:36:39');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
