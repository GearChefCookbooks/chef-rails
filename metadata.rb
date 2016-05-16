name             'docker-chef-rails'
maintainer       'Gary Leong'
maintainer_email 'gwleong@gmail.com'
license          'MIT License'
description      'example cookbook used to provision example docker containers'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

depends "docker"
depends 'iptables', '= 1.1.0'
