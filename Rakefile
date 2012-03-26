# Run 'rake metadata:to_json' to convert metadata.rb to metadata.json in cookbooks

COOKBOOKS_DIR = File.expand_path('../cookbooks',  __FILE__)
ROLE_DIR = File.expand_path('../roles',  __FILE__)

namespace :roles do 
  desc "Convert ruby roles from ruby to json, creating/overwriting json files."
  task :to_json do 
    Dir.glob(File.join(ROLE_DIR, '*.rb')) do |rb_file|
      role = Chef::Role.new
      role.from_file(rb_file)
      json_file = rb_file.sub(/\.rb$/,'.json') 
      File.open(json_file, 'w'){|f| f.write(JSON.pretty_generate(role))}
    end
  end
end

namespace :metadata do 
  desc "Convert all metadata from ruby to json."
  
  task :to_json do
    Dir.glob(File.join(COOKBOOKS_DIR, '*/metadata.rb')) do |rb_file|
      path = rb_file.split('/')[-3]
      recipe = rb_file.split('/')[-2]
      system("knife cookbook metadata -o #{path} #{recipe}")
    end
  end
end