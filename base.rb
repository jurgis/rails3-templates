# set some globals

@module_path = "http://github.com/jurgis/rails3-templates/raw/master/modules"
# uncoment when testing
@module_path = "~/rails/rails3-templates/modules"

# ---------------------------------------------------------------------------

# Initialize git
apply "#{@module_path}/git_init.rb"

git :add => "."
git :commit => "-m 'initial commit'"

# Delete unused files
apply "#{@module_path}/delete_unused.rb"

# Install AR adapters and copy database.yml to database.yml.example
apply "#{@module_path}/db.rb"

# Download jQuery and rails-ujs.js
apply "#{@module_path}/jquery.rb"

# Add rspec
apply "#{@module_path}/rspec.rb"

# Add cucumber
apply "#{@module_path}/cucumber.rb"

# Create a layout
apply "#{@module_path}/layout.rb"


# TODO: add
# * authlogic
# * openid
# * will_paginate
# ...
# check out base_old.rb

git :add => "."
git :commit => "-m 'applied base template'"
