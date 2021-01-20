require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Everyleaf
  class Application < Rails::Application
    config.time_zone = 'Etc/GMT+3'
    config.load_defaults 5.2
    config.i18n.available_locales = [:en, :so]
    config.i18n.default_locale = :so
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: true,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"

  end
end
end
