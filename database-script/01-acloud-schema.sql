/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `acloud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `acloud`;

CREATE TABLE IF NOT EXISTS `codes` (
  `code_group_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '코드그룹ID',
  `code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '코드',
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '값',
  `description` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '설명',
  `sort_order` int(11) NOT NULL COMMENT '정렬순서',
  `use_yn` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y' COMMENT '사용여부',
  PRIMARY KEY (`code_group_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='코드';

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
