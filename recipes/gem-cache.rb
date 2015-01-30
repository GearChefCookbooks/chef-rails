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
  tag 'gem-cache'
  source '/tmp/gem-cache'
  action :build_if_missing
end

docker_container 'gem-cache' do
  image 'ubuntu:gem-cache'
  container_name 'gem-cache'
  detach true
  action :run
end
