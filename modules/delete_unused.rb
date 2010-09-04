# Delete unused files
run "rm README"
run "rm public/index.html"
run "rm public/images/rails.png"
run "rm -f public/javascripts/*"

# Adding empty files
run "touch README"
run "touch public/javascripts/application.js"
