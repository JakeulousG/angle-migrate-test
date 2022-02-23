require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AngleMigrate
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.assets.precompile += %w( base.css )
    # precompile themes
    config.assets.precompile += ['angle/themes/theme-a.css',
                                 'angle/themes/theme-b.css',
                                 'angle/themes/theme-c.css',
                                 'angle/themes/theme-d.css',
                                 'angle/themes/theme-e.css',
                                 'angle/themes/theme-f.css',
                                 'angle/themes/theme-g.css',
                                 'angle/themes/theme-h.css'
                                ]
    # Controller assets
    config.assets.precompile += [
                                 # Stylesheets
                                 'singleview.css'
                                ]
  end
end
