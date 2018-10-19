require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.active_record.default_timezone = :local
    config.time_zone = 'America/Recife'
    #Se for trabalhar com time zones para não ter problemas e rapidamente irá decorar quais métodos devem ou não ser usados.
    # Não use
    #  Time.now # => Retorna o horário do sistema e ignora a time zone do projeto.
    #  Time.parse("2012-03-02 16:05:37") # => Irá assumir que a string recebida tá na time zone do sistema.
    #  Time.strptime(time_string, '%Y-%m-%dT%H:%M:%S%z') # Mesmo problema do Time.parse.
    #  Date.today # Pode ser ontem ou amanhã de acordo com a time zona setada na máquina.
    #  Date.today.to_time # => # Também não segue a time zone do projeto.
    # Use
    #  2.hours.ago # => Fri, 02 Mar 2012 20:04:47 UTC -03:00
    #  1.day.from_now # => Fri, 03 Mar 2012 22:04:47 UTC -03:00
    #  Date.today.to_time_in_current_zone # => Fri, 02 Mar 2012 22:04:47 UTC -03:00
    #  Date.current # => Fri, 02 Mar
    #  Date.parse('10/02/2017 23:00:00',"%d/%m/%Y") # => Fri, 10 Feb 2017
    #  Time.zone.parse("2012-03-02 16:05:37") # => Fri, 02 Mar 2012 16:05:37 UTC -03:00
    #  Time.zone.now # => Fri, 02 Mar 2012 22:04:47 UTC -03:00
    #  Time.current # Mesma coisa, só que de forma mais curta.
    #  Time.zone.today # Se você não pode usar Time ou DateTime.
    #  Time.zone.now.utc.iso8601 # Quando for trabalhar com APIs.
    #  Time.strptime(time_string, '%Y-%m-%dT%H:%M:%S%z').in_time_zone(Time.zone) # Se não pode usar Time.pars

    config.active_record.record_timestamps = true

    config.enable_dependency_loading = true
    config.autoload_paths << Rails.root.join('lib')
    
    ActiveModelSerializers.config.embed = :ids
    ActiveModelSerializers.config.adapter = :json_api

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
    config.active_record.index_nested_attribute_errors = true

    config.generators do |g|
      g.test_framework  :rspec, helper_spec: false, view_spec: false
      g.stylesheets  false
      g.javascripts  false
      g.partial :partial
    end
  end
end
