require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module GestaoCondominios
  class Application < Rails::Application
    config.load_defaults 7.0
    config.time_zone = "Brasilia"
    config.i18n.default_locale = :"pt-BR"
    config.active_job.queue_adapter = :sidekiq
  end
end