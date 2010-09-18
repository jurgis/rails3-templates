# A test template for experimenting

# set some globals

@module_path = "http://github.com/jurgis/rails3-templates/raw/master/modules"
# uncoment when testing
@module_path = "~/rails/rails3-templates/modules"

# ---------------------------------------------------------------------------

# Initialize git
apply "#{@module_path}/git_init.rb"

# Initialize git so I can see what's changed
git :add => "."
git :commit => "-m 'initial commit'"

puts "DEBUG: Outputting simple text"

puts "DEBUG: Dir.exists?('/tmp'): #{Dir.exists?('/tmp')}"

puts "DEBUG: Directory '/tmp' exists" if Dir.exists?('/tmp')
puts "DEBUG: Directory '/tmp' does not exist" unless Dir.exists?('/tmp')

# Create a layout
apply "#{@module_path}/layout.rb"
