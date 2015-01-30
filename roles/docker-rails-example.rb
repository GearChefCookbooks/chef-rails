name "docker-rails-example"
description "docker-rails-example"
default_attributes(
   :docker => {
        :storage_driver => "devicemapper",
        :image_cmd_timeout => 600,
        :container_cmd_timeout => 600
        },
   :postgresql => {
        :user => "postgres",
        :password => "postgres",
        }
)

#  "run_list": [
#    "recipe[device-mapper]",
#    "recipe[docker]",
#    "recipe[example-cookbook::gem-cache]",
#    "recipe[example-cookbook::postgres]",
#    "recipe[example-cookbook::rails-example]",
#    "recipe[example-cookbook::nginx]"
#  ]
