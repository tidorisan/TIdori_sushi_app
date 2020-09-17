require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TIdoriSushiApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
  		html_tag
	end

  # rails日本語対応化
	config.i18n.default_locale = :ja
  # google apiのlib/language.rbを明示的に読み込むようにする
  config.autoload_paths << Rails.root.join("lib")
  config.paths.add 'lib', eager_load: true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end

end



