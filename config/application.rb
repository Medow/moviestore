require_relative 'boot'

require 'rails/all'
require 'yts'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
Dotenv.load("#{ENV['HOME']}/.dotfiles/moviestore.env")

module MovieStore
  class Application < Rails::Application
	  # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.enable_dependency_loading = true
    config.autoload_paths << Rails.root.join('lib')
    config.autoload_paths << Rails.root.join('app/jobs')
  end
end