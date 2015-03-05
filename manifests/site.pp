# This file is managed by Puppet. Any manual changes or edits will be lost.

# site.pp file

# import 'nodes.pp'

# This file is managed by Puppet. Any manual changes will be lost.

# from the nodes.pp file

node 'puppetDemo' {
#  include puppet      # From Puppet 3 Cookbook 

  file { '/tmp/test':
    content => 'Zaphod Beeblebrox, this is a very large drink!',
  }

  notify { 'Got this far!' :}

  include nginx       # Page 38

  notify { 'Got this far 02!' :}


  $site_name = 'cat-pictures' # Page 98
  $site_domain = 'cat-pictures.com'
  file { '/etc/nginx/sites-enabled/cat-pictures.conf':
    content => template('nginx/vhost.conf.erb'),
    notify  => Service['nginx'],
  }

  notify { 'Got this far 03!' :}


  class { 'ntp':
    server => 'us.pool.ntp.org',
  }

  notify { 'Got this far 04!' :}

#  nginx::website { 'adorable-animals':
#    site_domain => 'adorable-animals.com',
#  }

#  include sudoers     # Page 82 - step 6
#  include ssh         # Page 80 - step 4

#  package { 'nginx': # PAGE 34
#    ensure => installed,
#  }

#  cron { 'run pull-updates from Git': # PAGE 94 - CHAPTER 6 EXERCISE
#    command => '/usr/bin/rsync -az /usr/local/bin/pull-updates',
#    hour    => '*',
#    minute  => '5',
#  }

#  cron { 'Back up cat-pictures': # PAGE 92 Scheduling a backup
#    command => '/usr/bin/rsync -az /var/www/cat-pictures/ /cat-pictures-backup/',
#    hour    => '04',
#    minute  => '00',
#  }

  file { '/var/www/cat-pictures': # PAGE 95
    ensure => directory,
  }

  notify { 'Got this far 05!' :}


  file { '/var/www/cat-pictures/img':
    source => 'puppet:///modules/cat-pictures/img',
    recurse => true,
    require => File['/var/www/cat-pictures'],
  }

  notify { 'Got this far 06!' :}

#  user { 'art': # PAGE 73
#    ensure => present,
#    comment => 'Art Vandalay',
#    home => '/home/art',
#    managehome => true,
#  }
#  ssh_authorized_key { 'art_ssh': # PAGE 77
#    user => 'art',
#    type => 'rsa',
#    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFBoLkAAkVcTsIOZnIYaS7NKzQebiqGLuGG9hZyYLd8ZZF6tPWCHatGqoLjhC/W0MaO/BGA4lPWQxZK4ifz+4+eoPZkX3xyVj1GIxyrxrdkIeI2qkw7QHupfjIogz7jFHpmWZT9HJU4Irqbt9SRRKl3/mD2Rp1kl06oRhjP4nTENP8RucgD33ymaPMY+pdUSyIA7igv8nKO+j0JOEmqJPldqC83ax0rVtaWqa9oO1qvpOA67x6grWFObnIF4WyqN/C+RBqzh4pJHzO7h1Cgt2FijKxEgAcafvj+mBE7plCLazsyWJ+ic+vrwwhniczn4tYScjFTLzUVqNzOfPra0S7'
#  }

#  exec { 'Run my arbitrary command':
#    command => '/bin/echo I ran this command on `/bin/date` >/tmp/command.output.txt',
#  }

}


# PAGE 65
#node 'puppetDemo2' {
#  include nginx
#  $site_name = 'dog-pictures' # Page 100
#  $site_domain = 'dog-pictures.com'
#  file { '/etc/nginx/sites-enabled/dog-pictures.conf':
#    content => template('nginx/vhost.conf.erb'),
#    notify  => Service['nginx'],
#  }


#}

  

# PAGE 26
#file { '/tmp/hello':
#  content => "Hello, world\n",
#}

#TT ADDED AS A TEST 2015-02-18 12:28 to replace the import statement

#include 'nodes.pp'  -- does NOT work

