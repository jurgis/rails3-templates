# Add other useful gems as inherited resources, formtastic, will_paginate, etc ...

gem 'will_paginate', '>=3.0.pre2'

gem 'inherited_resources', '1.1.2'
gem 'has_scope', '0.5.0'
gem 'inherited_resources_views', '0.3.0'
gem 'formtastic', '1.1.0'
gem 'validation_reflection', '0.3.8'

gem 'annotate', '>= 2.4.0'

# install those gems if they are not present yet
apply "#{@module_path}/install_gems.rb"

generate 'inherited_resources_views'
generate 'formtastic:install'
