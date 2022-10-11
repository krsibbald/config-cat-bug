# frozen_string_literal: true
ConfigCat.logger = Logger.new('log/config_cat_log.txt')
ConfigCat.logger.level = Logger::DEBUG

ConfigCatClient = ConfigCat.create_client(ENV.fetch('CONFIG_CAT_KEY'))
