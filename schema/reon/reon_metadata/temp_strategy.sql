CREATE TABLE `temp_strategy` (
 `id` int(10) NOT NULL DEFAULT '0',
 `name` varchar(50) CHARACTER SET latin1 NOT NULL,
 `json` text CHARACTER SET latin1 NOT NULL COMMENT 'this contains the json params to execute the strategy',
 `table_id` int(11) NOT NULL,
 `scope_id` int(11) NOT NULL DEFAULT '-1000'
) ENGINE=InnoDB;
