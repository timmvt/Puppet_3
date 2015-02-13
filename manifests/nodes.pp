# This file is managed by Puppet. Any manual changes will be lost.

# nodes.pp file

node 'puppetDemo' {

# PAGE 34
#  package { 'nginx':
#    ensure => installed,
#  }

# PAGE 39
  include nginx
}

