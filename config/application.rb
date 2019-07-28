require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

Dotenv::Railtie.load

module Rpg
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :"pt-BR"
  end
end
