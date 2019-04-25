require 'ostruct'
require 'yaml'
ac = YAML.load_file(File.join(ConfigHelp.config_full_path, 'app_config.yml'))[Rails.env]

# this will make the config available under the APP_CONFIG constant and methods like APP_CONFIG.metadata_engines
APP_CONFIG = ac.to_ostruct

ENV['SSL_CERT_FILE'] = APP_CONFIG.ssl_cert_file if APP_CONFIG.ssl_cert_file