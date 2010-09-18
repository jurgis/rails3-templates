# Generate a layout

# this version is also used later
install_theme_version = '0.8.2'
gem 'install_theme', install_theme_version

# install those gems if they are not present yet
apply "#{@module_path}/install_gems.rb"

# Change template engine for generators in config/application.rb file
# config_generators = <<-EOT
# 
#     config.generators do |g|
#       g.template_engine "web_app_theme"
#     end
# EOT
# environment config_generators


# Add the boxie-admin theme from install_theme/spec/fixtures directory
# `which install_theme` returns the path of install_theme bin file: ~/.rvm/gems/ruby-1.9.2-p0/bin/install_theme (plus newline char)
theme_dir =  `which install_theme`.rstrip + "/../../gems/install_theme-#{install_theme_version}/spec/fixtures/boxie-admin"
if Dir.exists?(theme_dir)
  git :rm => 'app/views/layouts/application.html.erb' # remove the application layout otherwise install_theme asks for user input (which is not seen)
  run "install_theme . #{theme_dir}"
end

# generate welcome controller which will choose a proper locale and redirect to another controller later
# and will be used right now to display application theme
generate 'controller', 'welcome theme'

# Add the default route
route "root :to => 'welcome#theme'"
