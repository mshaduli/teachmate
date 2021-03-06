require 'advanced_file_store_caching'
config.cache_classes = true

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new
config.log_level = :error

CACHE_FILE_PATH = "/var/www/teachmate/shared/cache"
ActionController::Base.cache_store = :advanced_file_store, CACHE_FILE_PATH
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true


# Disable delivery errors, bad email addresses will be ignored
config.action_mailer.raise_delivery_errors = false

ActionMailer::Base.delivery_method = :sendmail
ActionMailer::Base.default_charset = 'utf-8'

AVATARS_PATH = "/var/www/teachmate/shared/public/images/avatars"
SEARCH_CACHE_EXPIRE = 10 #minutes
