# Chef-repo for vagrant and chef-solo (aided by littlechef)

The purpose of this directory is to provide chef roles and recipes that 
work for both vagrant (for local development) and chef-solo (for remote 
deployments).

This directory works with littlechef, a python project that makes chef-solo 
easy to deploy and use: https://github.com/tobami/littlechef. `auth.cfg` must 
be configured to use littlechef. Read the instructions on the littlechef 
project page for usage guidance. 

The Rakefile in this directory provides a command `rake metadata:to_json` 
to convert metadata.rb to metadata.json in cookbooks. 

## One way to use

* Add your cookbooks to cookbooks/ or incorporate them with git submodules.
* At the moment, do *not* use data_bags. The bugs I experienced with Vagrant 
0.9 may be fixed, but I haven't tried yet. Instead, incorporate necessary 
parameters into your roles configurations.
* Add .json files to roles/ for specific server setups, such as 
database-server.json or app-server.json. For Vagrant-specific setups, you can 
start with these configurations and overwrite sections as needed using 
`chef.json.merge!`. See Vagrantfile-example.