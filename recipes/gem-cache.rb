#
# Cookbook Name:: docker-chef-rails
# Recipe:: gem-cache
#

#include_recipe 'docker'

#cookbook_file 'Dockerfile' do
#  path '/tmp/Dockerfile'
#  source 'gem-cache/Dockerfile'
#end

docker_image 'ubuntu' do
  action :pull
  retries 0
  retry_delay 2
  tag 'gem-cache'
  #cmd_timeout 5
  #image_cmd_timeout
  source '/tmp/gem-cache'
  action :build_if_missing
end

docker_container 'gem-cache' do
  image 'ubuntu:gem-cache'
  container_name 'gem-cache'
  detach true
  action :run
end
