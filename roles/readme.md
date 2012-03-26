# Roles

Define role configuration files such as:

    {
        "name": "app-server",
        "json_class": "Chef::Role",
        "run_list": [
            "recipe[sudo]",
            "recipe[utils::base_packages]",
            "recipe[build-essential]",
            "recipe[openssh]"
        ],
        "description": "App Server",
        "chef_type": "role",
        "default_attributes": {
            "base_packages": ["bash-completion", "nano", "htop", "screen"]
            // INSERT REQUIRED AND OPTIONAL ATTRIBUTES FOR COOKBOOKS
        }
    }