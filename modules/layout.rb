# Generate a layout
# gem 'nifty-generators', '>= 0.4.0', :require => nil, :group => :development

# Uncomment when fixed
# gem 'web-app-theme-rails', '>= 0.1.0', :require => nil, :group => :development

# Uncomment when testing
# gem 'web-app-theme-rails', :require => nil, :group => :development, :path => '~/rails/web-app-theme-rails'
gem 'web-app-theme-rails', :require => nil, :group => :development, :git => 'git://github.com/jurgis/web-app-theme-rails.git'

# install those gems if they are not present yet
apply "#{@module_path}/install_gems.rb"

# Change template engine for generators in config/application.rb file
config_generators = <<-EOT

    config.generators do |g|
      g.template_engine "web_app_theme"
    end
EOT
environment config_generators

# generate 'nifty:layout', '--force'
generate 'web_app_theme:layout', '--force'

# generate welcome controller which will choose a proper locale and redirect to another controller later
# and will be used right now to display application theme
generate 'controller', 'welcome index'

# Add the default route
route "root :to => 'welcome#index'"
