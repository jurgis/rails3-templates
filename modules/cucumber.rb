# add cucumber

gem 'cucumber',         :group => [:development, :test]
gem 'cucumber-rails',   :group => [:development, :test]
gem 'database_cleaner', :group => [:development, :test]
gem 'capybara',         :group => :test
gem 'launchy',          :group => :test
gem 'faker',            :group => [:development, :test]

# maybe I will need one of those as well
# gem 'ZenTest'
# gem 'autotest'
# gem 'autotest-rails'

# install those gems if they are not present yet
apply "#{@module_path}/install_gems.rb"

generate 'cucumber:install', '--capybara --rspec'
