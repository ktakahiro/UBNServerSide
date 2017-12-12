# ************************************************************
# Sequel Pro SQL dump
# バージョン 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.7.18)
# データベース: ubn_server_database
# 作成時刻: 2017-12-08 05:25:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ ar_internal_metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ar_internal_metadata`;

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`)
VALUES
	('environment','development','2017-11-13 09:44:01','2017-11-13 09:44:01');

/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ areas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;

INSERT INTO `areas` (`id`, `area_name`, `created_at`, `updated_at`)
VALUES
	(1,'横浜','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(2,'浅草','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(3,'渋谷','2017-11-15 14:53:02','2017-11-15 14:53:02'),
	(4,'品川','2017-11-15 15:04:01','2017-11-15 15:04:01'),
	(5,'新宿','2017-11-15 15:29:45','2017-11-15 15:29:45');

/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ main_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `main_tags`;

CREATE TABLE `main_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `main_tags` WRITE;
/*!40000 ALTER TABLE `main_tags` DISABLE KEYS */;

INSERT INTO `main_tags` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'テーマパーク','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(2,'飲食店','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(3,'アウトドア','2017-11-13 11:07:40','2017-11-13 11:07:40');

/*!40000 ALTER TABLE `main_tags` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20171011035858'),
	('20171011040055'),
	('20171011040124'),
	('20171011040150'),
	('20171011040245');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ spot_areas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spot_areas`;

CREATE TABLE `spot_areas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `spot_id` bigint(20) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spot_areas_on_spot_id` (`spot_id`),
  KEY `index_spot_areas_on_area_id` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `spot_areas` WRITE;
/*!40000 ALTER TABLE `spot_areas` DISABLE KEYS */;

INSERT INTO `spot_areas` (`id`, `spot_id`, `area_id`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(2,2,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(3,3,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(4,4,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(5,5,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(6,6,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(7,7,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(8,8,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(9,9,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(10,10,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(11,11,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(12,12,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(13,13,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(14,14,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(15,15,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(16,16,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(17,17,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(18,18,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(19,19,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(20,20,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(21,21,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(22,22,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(24,24,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(25,25,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(26,26,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(27,27,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(28,28,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(29,29,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(30,30,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(31,31,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(32,32,3,'2017-11-15 14:57:40','2017-11-15 14:57:40'),
	(33,33,4,'2017-11-15 15:05:15','2017-11-15 15:05:15'),
	(34,34,4,'2017-11-15 15:14:00','2017-11-15 15:14:00'),
	(35,35,4,'2017-11-15 15:16:34','2017-11-15 15:16:34'),
	(36,36,4,'2017-11-15 15:17:22','2017-11-15 15:17:22'),
	(37,37,4,'2017-11-15 15:20:33','2017-11-15 15:20:33'),
	(38,38,4,'2017-11-15 15:20:37','2017-11-15 15:20:37'),
	(39,39,4,'2017-11-15 15:20:40','2017-11-15 15:20:40'),
	(40,40,4,'2017-11-15 15:20:45','2017-11-15 15:20:45'),
	(41,41,4,'2017-11-15 15:20:49','2017-11-15 15:20:49'),
	(42,42,4,'2017-11-15 15:20:53','2017-11-15 15:20:53'),
	(43,43,4,'2017-11-15 15:20:56','2017-11-15 15:20:56'),
	(44,44,4,'2017-11-15 15:21:00','2017-11-15 15:21:00'),
	(45,45,4,'2017-11-15 15:21:05','2017-11-15 15:21:05'),
	(46,46,4,'2017-11-15 15:21:09','2017-11-15 15:21:09'),
	(47,47,4,'2017-11-15 15:21:13','2017-11-15 15:21:13'),
	(48,48,4,'2017-11-15 15:21:16','2017-11-15 15:21:16'),
	(49,49,4,'2017-11-15 15:21:20','2017-11-15 15:21:20'),
	(54,54,5,'2017-11-15 15:34:20','2017-11-15 15:34:20'),
	(55,55,5,'2017-11-15 15:34:24','2017-11-15 15:34:24'),
	(56,56,5,'2017-11-15 15:33:20','2017-11-15 15:33:20'),
	(57,57,5,'2017-11-15 15:33:25','2017-11-15 15:33:25'),
	(58,58,5,'2017-11-15 15:33:30','2017-11-15 15:33:30'),
	(59,59,5,'2017-11-15 15:33:33','2017-11-15 15:33:33'),
	(60,60,5,'2017-11-15 15:33:38','2017-11-15 15:33:38'),
	(61,61,5,'2017-11-15 15:33:43','2017-11-15 15:33:43'),
	(62,62,5,'2017-11-15 15:33:47','2017-11-15 15:33:47'),
	(63,63,5,'2017-11-15 15:33:51','2017-11-15 15:33:51'),
	(64,64,5,'2017-11-15 15:33:55','2017-11-15 15:33:55'),
	(65,65,5,'2017-11-15 15:33:59','2017-11-15 15:33:59'),
	(66,66,5,'2017-11-15 15:34:03','2017-11-15 15:34:03'),
	(67,50,5,'2017-11-15 15:34:07','2017-11-15 15:34:07'),
	(68,68,5,'2017-11-15 15:34:12','2017-11-15 15:34:12'),
	(69,69,5,'2017-11-15 15:34:16','2017-11-15 15:34:16');

/*!40000 ALTER TABLE `spot_areas` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ spot_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spot_tags`;

CREATE TABLE `spot_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `spot_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spot_tags_on_spot_id` (`spot_id`),
  KEY `index_spot_tags_on_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `spot_tags` WRITE;
/*!40000 ALTER TABLE `spot_tags` DISABLE KEYS */;

INSERT INTO `spot_tags` (`id`, `spot_id`, `tag_id`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(2,2,3,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(3,3,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(4,4,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(5,5,3,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(6,6,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(7,7,3,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(8,8,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(9,9,3,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(10,10,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(11,11,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(12,12,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(13,13,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(14,14,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(15,15,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(16,16,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(17,17,3,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(18,18,1,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(19,19,2,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(20,20,3,'2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(21,21,3,'2017-11-13 11:07:41','2017-11-13 11:07:41');

/*!40000 ALTER TABLE `spot_tags` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ spots
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spots`;

CREATE TABLE `spots` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `spot_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `hp_url` varchar(255) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `detail` text,
  `main_tag_id` bigint(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `is_female` tinyint(1) DEFAULT NULL,
  `is_male` tinyint(1) DEFAULT NULL,
  `start_hour` time DEFAULT NULL,
  `end_hour` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;

INSERT INTO `spots` (`id`, `spot_name`, `image_url`, `hp_url`, `longitude`, `latitude`, `detail`, `main_tag_id`, `min_people`, `max_people`, `is_female`, `is_male`, `start_hour`, `end_hour`, `created_at`, `updated_at`)
VALUES
	(1,'浅草花やしき','http://www.tokyo-park.net/images/1310661001_01.jpg','http://www.hanayashiki.net/',139.793965,35.715378,'東京の浅草・浅草寺の近くにある遊園地。もともと植物園だった場所を改装して遊園地を作ったという経緯があります。\n園内にはおよそ25のアトラクションを設置。派手さはないものの、ローラーコースターやメリーゴーラウンド、お化け屋敷といった昔懐かしいアトラクションが揃っており、主に家族連れからの人気を誇っています。',1,4,10,0,0,'10:00:00','18:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(2,'浅草寺','https://travel.mar-ker.com/wp-content/images/sites/6/2016/11/sensoji-precincts.jpg','http://www.senso-ji.jp/',139.796655,35.714765,'東京都内で最古のお寺といわれています。本尊の観音さま（秘仏）の霊験はとても強大といわれ、商売繁盛、家内安全、学業成就、厄除け、病気平癒など、あらゆる願いに効験があるとされています。周辺には言わずと知れた雷門、せんべいやさんやら衣装やさんやら昔ながらのおみせがずらりと並ぶ仲見世通り、五重塔があります。',3,1,6,0,0,'06:00:00','17:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(3,'東京スカイツリー','http://blog.skytree-obayashi.com/images/120301_06.jpg','www.tokyo-skytree.jp/',139.810700,35.710063,'東京スカイツリーは高さ634m。自立式電波塔として、「世界一」の高さを誇ります。',1,2,6,0,0,'08:00:00','22:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(4,'すみだ水族館','http://photolala.net/wp-content/uploads/2016/07/sumida-02.jpg','http://www.sumida-aquarium.com/',139.809630,35.709945,'東京スカイツリータウンウエストヤードの5階と6階の2層からなる『すみだ水族館』。上下フロアのつながりは、3つのルートから成り、それぞれに楽しみ方が異なります。決められた順路は無く、何度も行き来し、心行くまで水族館内を回遊し、さまざまな角度や視点で水槽を鑑賞することができます。お客さま一人ひとりがそれぞれの楽しみ方で鑑賞いただけます。',1,2,6,0,0,'09:00:00','21:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(5,'隅田公園','http://e-asakusa.jp/wp-content/uploads/sakura1-1.jpg','http://visit-sumida.jp/spot/6133/',139.803313,35.716055,'東京スカイツリーの眺め、隅田川沿いの景色（特に桜の時期）等を楽しむのに最適で、着物姿（レンタル）での記念撮影の方も多いですが、緑が多く、歩道等も整備されており、園内の散策にも適しているほか、遊具もそれなりに充実しています',3,1,10,0,0,'00:00:00','00:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(6,'東京ソラマチ','https://www.enjoytokyo.jp/img/s_s/l/911/l/l_00036911IMG2.jpg','www.tokyo-solamachi.jp/',139.810701,35.710113,'スカイツリーの足元にある「東京ソラマチ」は、ファッション、雑貨、レストラン、水族館、プラネタリウムなど312の店舗からなる大型商業施設です。',1,1,8,0,0,'10:00:00','21:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(7,'かっぱ橋道具街','https://s3-ap-northeast-1.amazonaws.com/storage.deece.jp/uploads/amusement/image/11198126/52c79d326d1d81ad_h480.jpg','http://www.kappabashi.or.jp/',139.788871,35.714496,'かっぱ橋道具街は浅草と上野の中間にある南北約８００ｍの商店街です。大正の初めに新堀川（シンボリガワ）という江戸時代に作られた川の両岸に古道具を商う人たちが店を出したことが発祥とされています。戦後の昭和２０年代以降はその時々の飲食業界のニーズに対応した、様々な業種の店舗が集積する個性的な専門商店街として発展し、現在は約１７０店舗が本ページ左側の業種別検索で表示される種々のジャンルの営業を行なっています。',3,1,6,0,0,'09:00:00','17:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(8,'浅草演芸ホール','http://www.cocoren.jp/data/shop/4eff27a10e3894ab4c250000/img01-1325344673-328x244.jpg','http://www.asakusaengei.com/',139.793025,35.713507,'東京都台東区浅草の通称「公園六区」と呼ばれる歓楽街の中心に位置する寄席である。都内に4軒ある落語定席の一つで、落語を中心に、漫才、手品などの色物芸が多数執り行われている。東洋興業株式会社が経営している。',1,1,6,0,0,'11:40:00','21:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(9,'浅草神社','https://xn----kx8a55x5zdu8lw8ih93b.jinja-tera-gosyuin-meguri.com/wp-content/uploads/2016/07/%E6%B5%85%E8%8D%89%E7%A5%9E%E7%A4%BE%E3%83%BB%E6%8B%9D%E6%AE%BF.jpg','http://www.asakusajinja.jp/index_2.html',139.797455,35.715082,'浅草神社では、家庭の幸せ、交通事故の防止、商売の成功、病気の防止、健康の維持、試験の合格などさまざまな願いを叶えるためのお祈りを行っています。',3,1,6,0,0,'09:00:00','16:30:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(10,'浅草今半 国際通り本店','https://rr.img.naver.jp/mig?src=http%3A%2F%2Fimgcc.naver.jp%2Fkaze%2Fmission%2FUSER%2F20120717%2F18%2F1002608%2F61%2F570x417xd1f95c4d2320d18c10fa38aa.jpg%2F300%2F600&twidth=300&theight=600&qlt=80&res_format=jpg&op=r','http://www.asakusaimahan.co.jp/',139.792134,35.713988,'今半といえば浅草。浅草といえば今半といわれるくらいの老舗。\nお金と時間に余裕があるなら是非訪れてみたいすき焼きの名店。浅草にいくつか店舗があります。',2,2,6,0,0,'11:30:00','21:30:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(11,'どぜう飯田屋','http://asakusa-ryoin.jp/iidaya/images/p3.jpg','http://asakusa-ryoin.jp/iidaya/',139.791592,35.714102,'飯田屋さんのどじょうは臭みがなくて美味しいと評判です。地元の集まりでよく使われています。',2,1,4,0,0,'11:30:00','21:30:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(12,'レストラン大宮   浅草本店','http://blogimg.goo.ne.jp/user_image/1c/af/25a831211fb345efafd4cc5dbb040a71.jpg','http://0038.info/asakusa/',139.797217,35.712861,'浅草の洋食でその立場を確立しつつある名店。\n場所も仲見世の真ん中の右側、浅草寺の手前と観光コースのど真ん中。\n味も当然大満足。\nテレビの取材も結構見られる浅草を代表する名店の一つです。',2,1,4,0,0,'11:30:00','20:30:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(13,'梅園 浅草本店','https://s.eximg.jp/expub/feed/B2m/2016/B2m_1273302/B2m_1273302_1.jpg','http://www.asakusa-umezono.co.jp/',139.796303,35.712819,'仲見世の裏にある甘味処。こちらのあわぜんざいやあんみつは一度は食べてみたい。',2,2,6,0,0,'10:00:00','20:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(14,'カップヌードルミュージアム(安藤百福発明記念館)','https://d2goguvysdoarq.cloudfront.net/system/facility_photos/photos/21560/normal.jpg?1393395203','https://www.cupnoodles-museum.jp/ja/',139.638758,35.455481,'インスタントラーメンにまつわるさまざまな展示や体験など通じて、発明・発見の大切さやベンチャーマインドについて楽しみながら学べる体験型ミュージアムです。\n自分だけのオリジナル「カップヌードル」が作れたり、巨大な工場の中で自分が麺になって遊んだり、世界各国の珍しい麺料理が味わえたり、インスタントラーメンの歴史に触れたり、とにかくここはインスタントラーメンづくし！\n世界初のインスタントラーメン「チキンラーメン」を手作りできる体験工房（要予約・年齢制限あり）では、小麦粉をこねるところから「瞬間油熱乾燥法」で乾燥するまでの工程を体験できるのも大きな魅力！また、インスタントラーメンの父「安藤百福」の研究小屋やアニメーションシアターなどを見学すればチキンラーメンを開発するまでの歴史や苦悩を知ることもできるはず。これでもうインスタントラーメン博士！帰りにはミュージアムショップでオリジナル商品や限定商品を購入してお土産にしよう！',1,1,10,0,0,'10:00:00','18:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(15,'横浜・八景島シーパラダイス','https://d2goguvysdoarq.cloudfront.net/system/facility_photos/photos/22101/normal.JPG?1394245212','http://www.seaparadise.co.jp',139.644606,35.336059,'八景島の中に、水族館、アトラクション、レストラン、ショッピングモール、ホテル等が集まった、複合型アミューズメント施設。\n\n海の生きものたちを総合的に知ることができる水族館「アクアミュージアム」\n7万尾のイワシたちが魅せる壮大な海のドラマ「群れと輝きの魚たち」は必見！\n\nイルカたちと癒しのひとときを過ごせる空と海の水族館「ドルフィン ファンタジー」\n\n海の生きものたちとふれあえる「ふれあいラグーン」は可能な限り仕切りを取り除いた開放的な施設で、通常の水族館よりも海の生きもの達を近くに感じることができるようになった。イルカやクジラとふれあえるプログラムもあります。（一部、公式ホームページより要事前予約）\n\nひとが自然の海とふれあい、海と共に成長していく“海育”がコンセプトの「うみファーム」では、自分で釣った魚をからあげにして食べることができます。\nプレジャーランドはブルーフォールやサーフコースターなどの絶叫系からメリーゴーラウンドなどのラブラブ系まで一日中楽しめるアトラクションがいっぱいです。',1,1,10,0,0,'09:00:00','21:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(16,'横浜アンパンマンこどもミュージアム＆モール','https://d2goguvysdoarq.cloudfront.net/system/facility_photos/photos/28092/normal.jpg?1405330873','http://www.yokohama-anpanman.jp/index.html',139.625454,35.458567,'アンパンマンの世界に入りたいという子供の夢を叶えたミュージアムには、3Fおでむかえジオラマをはじめ、アンパンマンごうやジャムおじさんのパン工場があり、2Fではおねえさんと一緒に体を動かして、ダンスやてあそびをしたり、大人気の人形劇や紙芝居の上映も。みみせんせいのがっこうでは工作教室を開催！1Fの『やなせたかし劇場』ではアンパンマンや仲間たちが登場するミニステージも大好評★\nまた、ショッピングモールではここにしかない限定グッズやフード、アンパンマンの背中に乗ってカットが出来るヘアサロンなど全20店舗。\nイベントや催事のスケジュールは、随時HPでアップしているので、お出かけ前にチェックしてみよう！\n運がよければ、アンパンマンや仲間たちにミュージアムやショッピングモールで会えるかも！？',1,3,4,0,0,'09:00:00','19:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(17,'横浜市立野毛山動物園','https://d2goguvysdoarq.cloudfront.net/system/facility_photos/photos/2429/normal.JPG?1365963838','http://www.hama-midorinokyokai.or.jp/zoo/nogeyama/',139.622268,35.447041,'高い丘の地形を生かした園内は散歩にぴったりなので家族でのおでかけにぴったり！\nキリン、トラ、ペンギン、爬虫類など、約100種類の動物達と出会うことができます。\nなかよし広場では、ハツカネズミ、モルモットなどの小動物と触れ合えます。\n「動物たちのお食事タイム」では、飼育員の解説を聞くことができます。',3,1,6,0,0,'09:30:00','16:30:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(18,'よこはまコスモワールド','https://d2goguvysdoarq.cloudfront.net/system/facility_photos/photos/17679/normal.jpg?1384135199','http://cosmoworld.jp/',139.636642,35.455226,'入園無料（別途アトラクション料金が必要）で、約30種類のアトラクションは、コースター系のスリル満点のものから、小さな子どもが乗れるものまで揃っているので、家族全員で楽しむことができる。\n\n週末には大観覧車「コスモクロック21」をモチーフにしたオリジナルキャラクター「コスモくん」による園内グリーティングを開催。子どもを対象に握手や記念撮影会を実施している。',1,3,7,0,0,'11:00:00','22:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(19,'横浜中華街','https://cdn.jalan.jp/jalan/img/8/kuchikomi/0608/KL/a1903_0000608226_1.JPG','http://www.chinatown.or.jp/',139.646289,35.442422,'中華レストランや中国の食材、お土産などが買える雑貨店、占いなど、約0.2平方キロのエリア内に500軒以上の店が軒を連ねる世界最大級の中華街。\n神奈川県横浜市中区山下町一帯に所在し、広東・北京・上海・四川など本場の中国料理を幅広く堪能できます。\nまた、中華街の正門である善隣門は高さ15mで朱と金で彩られており、観光客の写真スポットとして有名で、門をくぐると中国情緒があふれています。\nまた、今では祝賀パレードや慶祝獅子舞（採青）などのイベントも盛大に行われ、\nグルメスポットとしてだけではなく、日本を代表する観光エリアに変貌を遂げ、年間2000万人を超えるほどに。',2,2,6,0,0,'11:00:00','22:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(20,'シーバス','https://www.jalan.net/jalan/img/6/spot/0116/KL/14100ee4610116487_6.jpg','http://www.yokohama-cruising.jp/',139.649382,35.445932,'横浜駅東口、赤レンガ倉庫、みなとみらいぷかりさん橋、山下公園を結ぶ海上バス。',3,2,6,0,0,'10:00:00','20:00:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(21,'港の見える丘公園','https://cdn.jalan.jp/jalan/img/7/kuchikomi/1447/KL/fbb7c_0001447938_1.jpg','http://www.city.yokohama.lg.jp/kankyo/park/yokohama/kouen007.html',139.655580,35.439806,'横浜のエキゾチックなイメージを代表する山手の丘の海側の顔ともいえ、公園からベイブリッジが望める絶好のロケーションとその名称から、横浜を代表する公園の一つとして人気は高く、山手の観光コースからは外せない存在となっています。春と秋にはローズガーデンが見事です。',3,2,6,0,0,'00:00:00','23:59:00','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(22,'目黒寄生虫館',' http://torasuke.jp/wp-content/uploads/2015/06/080912.jpg','http://www.kiseichu.org/',139.706648,35.631698,'医師 亀谷了が私財を投じて1953年に創設した寄生虫学専門の私立博物館です。寄生虫分類学研究センターも兼ねており、10万点に及ぶ寄生虫の標本のうち、特に重要な300点が展示されています。',NULL,NULL,NULL,NULL,NULL,'10:00:00','17:00:00','2017-11-14 17:07:44','2017-11-14 17:07:44'),
	(24,'恵比寿ガーデンプレイス',' https://www.jalan.net/jalan/img/6/kuchikomi/0536/KXL/db242_0000536530_1.jpg','https://gardenplace.jp/',139.713487,35.642145,'東京都渋谷区および目黒区に跨る複合施設、恵比寿ガーデンプレイスの公式ホームページです。JR山手線地下鉄日比谷線恵比寿駅徒歩5分。緑あふれる施設内ではレストラン、映画、写真美術館、ビール博物館、ショッピングが楽しめます。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 14:02:31','2017-11-15 14:02:31'),
	(25,'渋谷ヒカリエ',' https://www.jalan.net/jalan/img/8/kuchikomi/0488/KXL/5749b_0000488595_1.jpg','http://www.hikarie.jp/',139.703473,35.659025,'渋谷から世界を照らす。Shibuya Hikarie誕生。渋谷ヒカリエ。',NULL,NULL,NULL,NULL,NULL,'10:00:00','21:00:00','2017-11-15 14:02:35','2017-11-15 14:02:35'),
	(26,'東急ハンズ　渋谷店',' https://www.jalan.net/jalan/img/3/kuchikomi/0673/KXL/e3e14_0000673876_1.jpg','https://shibuya.tokyu-hands.co.jp/',139.697807,35.662132,'東京都渋谷区。JR「渋谷駅」ハチ公口より徒歩8分。ここは、ヒントマーケット。お客様がヒントを見つけ、くらしを創りだし、私たちもお客様から明日のハンズのヒントをもらっていく。ハンズはあなたにとっての「ヒント・マーケット」です。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 14:02:39','2017-11-15 14:02:39'),
	(27,'NHKスタジオパーク',' https://www.jalan.net/jalan/img/8/kuchikomi/0198/KXL/81df0_0000198592.jpg','http://www.nhk.or.jp/studiopark/',139.696747,35.665120,'「NHKスタジオパーク」は、番組やキャラクターのオリジナルコンテンツ、番組制作の舞台裏や最新技術による映像上映など、さまざまな展示やイベント、公開番組を通してNHKの多彩な放送にふれることのできる体験型のテーマパークです。',NULL,NULL,NULL,NULL,NULL,'10:00:00','18:00:00','2017-11-15 14:02:49','2017-11-15 14:02:49'),
	(28,'しながわ水族館',' https://www.jalan.net/jalan/img/7/kuchikomi/1587/KXL/a87a9_0001587268_1.jpg','http://www.aquarium.gr.jp/',139.737501,35.588476,'しながわ水族館で会えるイルカ、アザラシ、サメなど沢山の仲間達を紹介します。\nイベント、施設案内の最新情報を随時アップ中！',NULL,NULL,NULL,NULL,NULL,'10:00:00','17:00:00','2017-11-15 14:02:53','2017-11-15 14:02:53'),
	(29,'目黒川（桜並木）',' https://www.jalan.net/jalan/img/8/kuchikomi/1368/KXL/256b0_0001368499_1.jpg','http://ii-nippon.net/%E8%8A%B1%E7%A5%AD%E3%82%8A/1362.html',139.705295,35.639215,'春といえばやっぱり桜♪ 毎年お花見を楽しみにしている方も多いのではないでしょうか。 早咲きの河津桜が散り始める…',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 14:03:13','2017-11-15 14:03:13'),
	(30,'駒沢オリンピック公園',' https://www.jalan.net/jalan/img/0/kuchikomi/1220/KXL/c6e07_0001220069_1.jpg','https://www.tef.or.jp/kopgp/',139.661894,35.627198,'オリンピック東京大会のあの感動が、今も熱くよみがえってきます。スポーツを愛し、人と\n人とのふれ合いを大切にし、日々の暮らしをいつくしむ人たちのためのスペースです。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 14:03:26','2017-11-15 14:03:26'),
	(31,'目黒区美術館',' https://www.jalan.net/jalan/img/8/kuchikomi/2718/KXL/79635_0002718922_1.jpg','http://mmat.jp/',139.707722,35.634876,'目黒区美術館の概要、展示会・催事情報、利用案内。併設する区民ギャラリーの案内。',NULL,NULL,NULL,NULL,NULL,'10:00:00','18:00:00','2017-11-15 14:03:46','2017-11-15 14:03:46'),
	(32,'本多劇場',' https://www.jalan.net/jalan/img/8/kuchikomi/2838/KXL/63c9f_0002838700_5.jpg','http://www.honda-geki.com/honda.html',139.668291,35.661587,'上田誠 滝本晃司 石田剛太 酒井善史 角田貴志 諏訪雅 土佐和成 中川晴樹 永野宗典 \n西村直子 本多力 金丸慎太郎 川面千晶 木下出 菅原永二. Start. 10/20, 21, 22, 23, 24\n, 25, 26, 27, 28, 29. 金, 土, 日, 月, 火, 水, 木, 金, 土, 日. 13:00, ○, ○, 休 演 日',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 14:04:16','2017-11-15 14:04:16'),
	(33,'キッザニア東京',' https://www.jalan.net/jalan/img/8/spot/0178/KXL/guide000000178057_19.jpg','http://www.kidzania.jp/tokyo/',139.791560,35.656288,'キッザニア東京（KidZania Tokyo）オフィシャルサイトへようこそ。3～15歳のこどもを対象にした、楽しみながら社会のしくみが学べる「こどもが主役の街」です。約100種類の仕事やサービスが体験できます。営業時間、入場料金、ご予約方法、体験できるお仕事一覧などをご案内します。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:05:15','2017-11-15 15:05:15'),
	(34,'東京タワー大展望台',' https://www.tokyotower.co.jp/of/files/img-observatory-main.jpg','https://www.tokyotower.co.jp/observatory/index.html',139.745433,35.658581,'特別展望台・大展望台のご案内. 東京の街並みを立体的に感じ取る、150mの大展望台。 そして、全東京を手に取るように俯瞰する、250mの特別展望台。 ',NULL,NULL,NULL,NULL,NULL,'09:00:00','23:00:00','2017-11-15 15:14:00','2017-11-15 15:14:00'),
	(35,'お台場海浜公園',' https://www.jalan.net/jalan/img/3/kuchikomi/0703/KXL/755c6_0000703750_1.jpg','http://www.tptc.co.jp/park/01_02',139.776045,35.630737,'お台場海浜公園は、東京都港区台場にある旧防波堤と台場公園に囲まれている入り江を利用した海浜公園である。潮風公園、台場公園と隣接する。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:16:34','2017-11-15 15:16:34'),
	(36,'東京ビッグサイト',' https://www.jalan.net/jalan/img/2/kuchikomi/0632/KXL/0b128_0000632986_1.jpg','http://www.bigsight.jp/',139.794242,35.629820,'東京ビッグサイト（東京国際展示場）は、展示ホール、国際会議場、レセプションホールなどを備える日本最大のコンベンション施設です。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:21:24','2017-11-15 15:21:24'),
	(37,'アクアパーク品川',' http://www.aqua-park.jp/aqua/img/event/stadium_night.jpg','http://www.aqua-park.jp/',139.735087,35.627829,'アクアパーク品川は、音・光・映像、生き物たちが融合する最先端エンタメ施設です。',NULL,NULL,NULL,NULL,NULL,'09:00:00','22:00:00','2017-11-15 15:20:33','2017-11-15 15:20:33'),
	(38,'アクアシティお台場',' https://www.jalan.net/jalan/img/2/kuchikomi/0322/KXL/3d062_0000322956.jpg','http://www.aquacity.jp/',139.773568,35.627819,'アクアシティお台場は、2000年4月に開業した東京都港区台場に存在する複合商業施設である。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:20:37','2017-11-15 15:20:37'),
	(39,'ダイバーシティ東京 プラザ',' https://www.jalan.net/jalan/img/4/kuchikomi/1334/KXL/7c1f3_0001334940_2.jpg','https://mitsui-shopping-park.com/divercity-tokyo/',139.775453,35.625046,'「ダイバーシティ東京 プラザ」は、「劇場型都市空間」をコンセプトに、遊び、学び、くつろぎ、そして驚きや感動を体感いただけるような「東京、お台場の新名所」を目指します。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:20:40','2017-11-15 15:20:40'),
	(40,'東京お台場　大江戸温泉物語',' https://www.jalan.net/jalan/img/4/spot/0174/KXL/guide000000174153_3.jpg','http://daiba.ooedoonsen.jp/',139.777509,35.615491,'大江戸温泉物語グループ｜東京お台場 大江戸温泉物語【公式サイト】。お江戸の町は、毎日お祭り！日本一の元祖温泉テーマパーク！ 東京ベイエリアで温泉旅行！日本最大級の元祖温泉テーマパークです。のれんをくぐれば、江戸の町にタイムスリップ！心の距離がグッと近づく非日常空間で、思いっきり羽を伸ばそう！',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:20:45','2017-11-15 15:20:45'),
	(41,'パレットタウン大観覧車',' https://www.jalan.net/jalan/img/8/kuchikomi/1568/KXL/df92b_0001568329_1.jpg','http://www.daikanransha.com/',139.782233,35.626351,'お台場のシンボル、パレットタウンにある大観覧車。東京タワーとスカイツリー、東京ゲートブリッジとレインボーブリッジ、東京名所が一望できる抜群の眺望です。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:20:49','2017-11-15 15:20:49'),
	(42,'VenusFort',' https://www.jalan.net/jalan/img/2/kuchikomi/1502/KXL/b94ce_0001502788_1.jpg','http://www.venusfort.co.jp/',139.779937,35.624873,'ヴィーナスフォートは、東京都江東区青海のパレットタウン内にあるショッピングモール。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:20:53','2017-11-15 15:20:53'),
	(43,'東京ジョイポリス',' https://www.jalan.net/jalan/img/6/kuchikomi/0086/KXL/bfd5a_0000086738.jpg','http://tokyo-joypolis.com/',139.775364,35.628660,'CAセガジョイポリス株式会社が運営する東京お台場の屋内型遊園地・デックス東京ビーチ内の施設なので、雨の日も楽しめます。デートにも最適！・ジェットコースターなどのアトラクション・イベントも充実・楽しさいっぱいのテーマパーク、東京ジョイポリスで遊んじゃおう！',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:20:56','2017-11-15 15:20:56'),
	(44,'お台場',' http://www.aquacity.jp/img/common/og_image.jpg','http://www.gotokyo.org/jp/tourists/areas/areamap/odaiba.html',139.776710,35.624792,'2020年の東京オリンピックに向けて、盛り上がっている都心の臨海エリア「お台場」',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:21:00','2017-11-15 15:21:00'),
	(45,'フジテレビ本社ビル',' http://www.tokyo-park.net/images/1310361007_01.jpg','http://www.fujitv.co.jp/gotofujitv/',139.774056,35.626605,'25階の球体展望室「はちたま」では、10/7(土)より映画「ミックス。」展が期間限定で登場！！ARフォトスポット＆オリジナルグッズ販売＆劇中の卓球場が「はちたま」に現れる！？',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:21:05','2017-11-15 15:21:05'),
	(46,'東京モノレール',' http://www.tokyo-monorail.co.jp/fun/img/small/img_wall_12_xga.jpg','http://www.tokyo-monorail.co.jp/',139.756782,35.655574,'東京モノレールの公式ホームページです。羽田空港へのアクセスに便利な東京\nモノレールの時刻表、各駅情報、運賃、おトクなきっぷ、企業情報など、さまざまな情報\nをご覧いただけます。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:21:09','2017-11-15 15:21:09'),
	(47,'水上バス　東京都観光汽船',' https://www.jalan.net/jalan/img/5/kuchikomi/0595/KXL/e8d59_0000595891_2.jpg','http://www.suijobus.co.jp/',139.798478,35.710758,'水上バスでの隅田川や東京湾での優雅なクルージングが楽しめます。チャーター・貸切クルーズ、初日の出やお花見船、隅田川花火大会、クリスマスクルーズなどのイベントクルーズなど、いつもとは違う確度から360°東京の景色を堪能することが出来ます',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:21:13','2017-11-15 15:21:13'),
	(48,'東海道新幹線品川駅',' https://www.jalan.net/jalan/img/0/kuchikomi/0640/KXL/90bf6_0000640092_2.jpg','https://time.ekitan.com/shinkansen/time_table/0006010/2236_1.shtml',139.738760,35.628471,'東海道新幹線・山陽新幹線 品川駅(博多方面)6時台の時刻表です。主要駅:品川、\n名古屋、新大阪、広島、博多、列車名:のぞみ、ひかり、こだま.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:21:16','2017-11-15 15:21:16'),
	(49,'増上寺',' http://jin-power.com/gazou/todoufuken/tokyo/zojoji/zojoji_S.jpg','https://www.zojoji.or.jp/',139.748208,35.657424,'徳川将軍家とのゆかりの深い、浄土宗大本山増上寺の公式サイト。東京都港区、芝大門のお寺は、600年の歴史をもち、貴重な文化財を展示しています。日曜大殿説教や写経、初詣などの季節行事も実施しています。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:21:20','2017-11-15 15:21:20'),
	(54,'三鷹の森ジブリ美術館（三鷹市立アニメーション美術館）',' https://www.jalan.net/jalan/img/8/kuchikomi/0258/KXL/a7499_0000258723.jpg','http://www.ghibli-museum.jp/',139.570432,35.696238,'三鷹の森ジブリ美術館の公式サイトです。『迷子になろうよ、いっしょに。』をキャッチコピーにした不思議な美術館です。入場券は日時指定の予約制。',NULL,NULL,NULL,NULL,NULL,'10:00:00','18:00:00','2017-11-15 15:33:20','2017-11-15 15:33:20'),
	(55,'明治神宮',' http://jin-power.com/gazou/todoufuken/tokyo/meijijingu/IMG_1823.JPG','http://www.meijijingu.or.jp/',139.699326,35.676398,'渋谷区代々木鎮座。大正９年１１月１日創建。明治天皇、昭憲皇太后を祀る。他に神宮\n外苑、明治記念館のご紹介等。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:25','2017-11-15 15:33:25'),
	(56,'伊勢丹新宿店',' https://www.murakami-salmon.com/wp-content/uploads/2015/11/store1.jpg','http://isetan.mistore.jp/store/shinjuku/',139.704616,35.691637,'『毎日が、あたらしい。ファッションの伊勢丹』から新宿店の店舗情報や最新のイベント・フェア・商品の情報をお届けいたします。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:30','2017-11-15 15:33:30'),
	(57,'東京都庁舎展望室',' https://www.jalan.net/jalan/img/8/kuchikomi/1968/KXL/15417_0001968421_2.jpg','http://www.yokoso.metro.tokyo.jp/tenbou/',139.691706,35.689488,'東京都庁最上部の一般開放されている展望室。ギフトショップも併設。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:33','2017-11-15 15:33:33'),
	(58,'紀伊國屋書店新宿本店',' https://www.jalan.net/jalan/img/4/kuchikomi/3414/KXL/7da8c_0003414979_1.jpg','https://www.kinokuniya.co.jp/c/store/Shinjuku-Main-Store/',139.703012,35.692233,'住所：東京都新宿区新宿3-17-7 TEL ：03-3354-0131（代表） 各フロアへのお問合せは直通電話をご利用下さい。 売場直通番号はこちら FAX ：03-3354-0275 営業時間 ：10：00～21：00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:38','2017-11-15 15:33:38'),
	(59,'新宿御苑',' http://fng.or.jp/shinjuku/issue/midokoromap/migoro1603harua.jpg','http://fng.or.jp/shinjuku/',139.710052,35.685176,'新宿御苑は、東京都新宿区と渋谷区に跨る環境省所管の庭園である。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:43','2017-11-15 15:33:43'),
	(60,'井の頭恩賜公園',' https://www.jalan.net/jalan/img/5/kuchikomi/0395/KXL/7ec97_0000395412_1.jpg','https://www.tokyo-park.or.jp/park/format/index044.html',139.573191,35.699744,'東京都武蔵野市と三鷹市にまたがる都立公園である。 1917年5月1日開園。三宝寺池・善福寺池と並び、武蔵野三大湧水池として知られる井の頭池を中心とした公園である。東京都西部公園緑地事務所が管理している。日本さくら名所100選に選定されている。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:47','2017-11-15 15:33:47'),
	(61,'タカシマヤ　タイムズスクエア',' https://www.jalan.net/jalan/img/7/kuchikomi/1557/KXL/668a3_0001557812_1.jpg','http://www.takashimaya.co.jp/shinjuku/timessquare/',139.702277,35.687585,'百貨店や専門店などで構成される複合商業施設である。高島屋が運営している。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:51','2017-11-15 15:33:51'),
	(62,'ルミネ　the　よしもと',' https://www.jalan.net/jalan/img/7/kuchikomi/1117/KXL/d035f_0001117800_1.jpg','http://www.yoshimoto.co.jp/lumine/',139.700309,35.689566,'2017年11月13日 (月) 【お知らせ】11/13(月)「東野幸治vs山里亮太」当日券の販売\n方法に関しまして; 2017年11月13日 (月) 週末にも夜公演、行います◎; 2017年11月\n13日 (月) カウントダウンライブ開催決定！！ 2017年11月11日 (土) １月にも恒例\nイベント「 ...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:55','2017-11-15 15:33:55'),
	(63,'小田急百貨店新宿店',' http://www.odakyu-dept.co.jp/irp5la000000026z-img/tmpl00_store01.jpg','http://www.odakyu-dept.co.jp/shinjuku/',139.699558,35.691322,'小田急百貨店,小田急百貨店ホームページ。店舗情報や採用・IR情報などの企業案内をはじめ、ギフトやフード、ファッション、最新のイベント情報をご案内。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:33:59','2017-11-15 15:33:59'),
	(64,'新大久保コリアタウン',' https://www.jalan.net/jalan/img/1/kuchikomi/0331/KXL/d182f_0000331179.jpg','http://www.wowsokb.jp/map/',139.700049,35.701301,'新大久保・コリアンタウンの地図（マップ）と情報. 地図を印刷する. ※画像（マップ）を\nクリックすると新大久保・コリアンタウンの全体図が見られます。 新大久保駅の改札口は\n一つで、改札口を出て右側に韓国関連店が多いですが、 最近はコリアンタウンの拡大に\n ...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:34:03','2017-11-15 15:34:03'),
	(65,'大田黒公園',' https://www.jalan.net/jalan/img/5/kuchikomi/1525/KXL/c8f46_0001525012_2.jpg','http://www.city.suginami.tokyo.jp/shisetsu/kouen/02/ogikubo/1007133.html',139.624564,35.700782,'杉並区公式ホームページ',NULL,NULL,NULL,NULL,NULL,'09:00:00','17:00:00','2017-11-15 15:34:07','2017-11-15 15:34:07'),
	(66,'京王百貨店新宿店',' https://www.keionet.com/info/shinjuku/cms_img/img_store_shinjuku.png','https://www.keionet.com/info/shinjuku/',139.699161,35.690211,'デパート',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:34:12','2017-11-15 15:34:12'),
	(67,'明治神宮外苑',' http://www.meijijingugaien.jp/information/images/access-map.gif','http://www.meijijingugaien.jp/',139.716898,35.679250,'明治神宮の外苑として大正15年に創建され聖徳記念絵画館を中心に神宮球場をはじめ各種スポーツ施設と四季折々の自然を満喫することができる。特にいちょう並木はよく知られている。',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:34:16','2017-11-15 15:34:16'),
	(68,'ヨドバシカメラ西口本店',' http://image.yodobashi.com/catalog/kalmia/cs/satellite/1172775271169.gif','http://www.yodobashi.com/ec/store/0011/',139.697918,35.689802,'2017年10月27日【新宿西口本店】大人気商品SIXPAD(シックスパッド）がご体感頂け\nます！ 2017年10月01日【新宿西口本店】第2回ヨドバシカメラ新宿西口本店ミニ四駆\nコンデレ～オータムカップ～; 2017年09月22日【新宿西口本店】ポケットモンスター ...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:34:20','2017-11-15 15:34:20'),
	(69,'新宿アルタ',' https://www.jalan.net/jalan/img/4/kuchikomi/1494/KXL/b52a3_0001494076_1.jpg','http://www.altastyle.com/shinjuku/',139.701291,35.692621,'デパート',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-11-15 15:34:24','2017-11-15 15:34:24');

/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ sub_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sub_tags`;

CREATE TABLE `sub_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# テーブルのダンプ tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `tag_name`, `created_at`, `updated_at`)
VALUES
	(1,'テーマパーク','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(2,'飲食店','2017-11-13 11:07:40','2017-11-13 11:07:40'),
	(3,'アウトドア','2017-11-13 11:07:40','2017-11-13 11:07:40');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
