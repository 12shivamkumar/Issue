CREATE TABLE `intent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('RECOMMENDED FOR YOU','REORDER YOUR FAVOURITE','TRENDING','POPULAR','BTAB','FREQUENTLY BOUGHT TOGETHER','SIMILAR ITEMS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_type` enum('USER','ITEM','GENERIC') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tb is user/item intended or generic',
  PRIMARY KEY (`id`)
);