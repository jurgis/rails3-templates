# add rspec
gem 'rspec', '>= 2.0.0.beta.20', :group => [:development, :test]
gem 'rspec-rails', '>= 2.0.0.beta.20', :group => [:development, :test]
gem 'factory_girl_rails', :group => :test

# install those gems if they are not present yet
apply "#{@module_path}/install_gems.rb"

# Change fixtures to factory for generators in config/application.rb file
config_generators = <<-EOT

    config.generators do |g|
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end
EOT
environment config_generators

generate 'rspec:install'
