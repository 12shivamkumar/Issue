CREATE TABLE `repeat_status_val` (
`id` bigint(20) NOT NULL DEFAULT '0',
`status` varchar(100) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `status_idx` (`status`)
) ENGINE=InnoDB ;
