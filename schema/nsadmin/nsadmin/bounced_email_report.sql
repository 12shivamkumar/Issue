

CREATE TABLE `bounced_email_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `imap_uid` bigint(20) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `smtp_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_reason` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) 

