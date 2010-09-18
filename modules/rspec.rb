# add rspec
gem 'rspec', '>= 2.0.0.beta.22', :group => [:development, :test]
gem 'rspec-rails', '>= 2.0.0.beta.22', :group => [:development, :test]
gem 'factory_girl_rails', :group => [:development, :test]
# factory girl generators are not yet in factory_girl_rails gem
gem 'rails3-generators', :group => :development

# install those gems if they are not present yet
apply "#{@module_path}/install_gems.rb"

# Change fixtures to factory for generators in config/application.rb file
config_generators = <<-EOT

    config.generators do |g|
      g.test_framework  :rspec, :fixture_replacement => :factory_girl
    end
EOT
environment config_generators

generate 'rspec:install'
