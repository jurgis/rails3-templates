# Install AR adapters and copy database.yml to database.yml.example

# The database gem is included in the Gemfile when creating the application and specifying -d switch
# gem 'sqlite3-ruby', '1.3.1', :require => 'sqlite3'
# gem 'pg', '0.9.0'
# gem 'mysql', '2.8.1'

# copy it to a sample file because database.yml will be added to the .gitignore file
run 'cp config/database.yml database.yml.example'

run 'echo config/database.yml >> .gitignore'

rake 'db:create'
rake 'db:migrate'
