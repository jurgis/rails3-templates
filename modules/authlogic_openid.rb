# Add authlogic and openid

gem 'authlogic', '2.1.6'

# open id support
gem 'ruby-openid', '2.1.8', :require => 'openid'
gem 'authlogic-oid', '1.0.4', :require => 'authlogic_openid'

# Not sure if I need this
# gem 'rack-openid', '>=1.2.0', :require => 'rack/openid' # hack for open_id_authentication plugin not to break it

# # Add plugins as git submodules
# plugin 'open_id_authentication', :git => 'git://github.com/rails/open_id_authentication.git', :submodule => true
# rake 'open_id_authentication:db:create'

