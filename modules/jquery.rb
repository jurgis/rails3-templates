# Download jQuery and rails-ujs.js

# Using jQuery 1.4.1 because of this bug in 1.4.2 http://jsbin.com/uboxu3/7/
run "curl -L http://code.jquery.com/jquery-1.4.1.min.js > public/javascripts/jquery-1.4.1.min.js"
run "curl -L http://github.com/rails/jquery-ujs/raw/master/src/rails.js > public/javascripts/rails.js"
