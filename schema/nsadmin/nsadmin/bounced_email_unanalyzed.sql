

CREATE TABLE `bounced_email_unanalyzed` (
  `imap_uid` bigint(20) NOT NULL,
  `reason` enum('notabounce','couldntparse') COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `imap_uid` (`imap_uid`)
) 

