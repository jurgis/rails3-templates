# Delete unused files
run 'rm README'
run 'rm -f public/javascripts/*'

git :rm => 'public/index.html'
git :rm => 'public/images/rails.png'

# Adding empty files
run 'touch README'
run 'touch public/javascripts/application.js'
