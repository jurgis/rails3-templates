# add cucumber

gem 'cucumber',         :git => 'git://github.com/aslakhellesoy/cucumber.git', :group => [:development, :test]
gem 'cucumber-rails',   :git => 'git://github.com/aslakhellesoy/cucumber-rails.git', :group => [:development, :test]
gem 'database_cleaner', :git => 'git://github.com/bmabey/database_cleaner.git', :group => [:development, :test]
gem 'capybara',         :group => :test
gem 'launchy',          :group => :test
gem 'faker',            :group => [:development, :test]

# maybe I will need one of those as well
# gem 'ZenTest'
# gem 'autotest'
# gem 'autotest-rails'

# install those gems if they are not present yet
apply "#{@module_path}/install_gems.rb"

generate 'cucumber:skeleton', '--capybara --rspec'
