# set some globals

@module_path = "http://github.com/jurgis/rails3-templates/raw/master/modules"
# uncoment when testing
@module_path = "~/rails/rails3-templates/modules"

# ---------------------------------------------------------------------------

# Delete unused files
apply "#{@module_path}/delete_unused.rb"

# Download jQuery and rails-ujs.js
apply "#{@module_path}/jquery.rb"

# Initialize git
apply "#{@module_path}/git.rb"

# Add rspec
apply "#{@module_path}/rspec.rb"

# Create a layout
apply "#{@module_path}/layout.rb"


# TODO: add
# * cucumber and capybara
# * authlogic
# * openid
# * will_paginate
# * active-record-adapters: sqlite, pg, mysql

# ...
# check out base_old.rb
