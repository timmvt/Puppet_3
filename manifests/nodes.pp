# This file is managed by Puppet. Any manual changes will be lost.
# This line added 2015-02-17 13:59

# nodes.pp file
# this is a demonstration of refactoring

node 'puppetDemo' {

# PAGE 34
#  package { 'nginx':
#    ensure => installed,
#  }

# PAGE 73
  user { 'art':
    ensure => present,
    comment => 'Art Vandalay',
    home => '/home/art',
    managehome => true,
  }

# PAGE 39
#  include nginx
}

# PAGE 55
node 'puppetDemo2' {
  
# PAGE 65
#  include nginx
#  }

}
