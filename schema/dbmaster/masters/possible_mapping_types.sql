

CREATE TABLE `possible_mapping_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapping_type` enum('data_providers_file_mapping','printer_template_file_mapping','integration_output_template_file_mapping','integration_post_output_file_mapping','client_log_file_mapping','lego_properties_file_mapping') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ;

