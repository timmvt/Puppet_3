# This file is managed by Puppet. Any manual changes will be lost.
# This line added 2015-02-17 13:59

# nodes.pp file

node 'puppetDemo' {
# PAGE 34
#  package { 'nginx':
#    ensure => installed,
#  }

# PAGE 38
  include nginx

# PAGE 95
#  file { '/var/www/cat-pictures':
#    ensure => directory,
#  }

#  file { '/var/www/cat-pictures/img':
#    source => 'puppet:///modules/cat-pictures/img',
#    recurse => true,
#    require => File['/var/www/cat-pictures'],
#  }

# PAGE 94
   #CHAPTER 6 EXERCISE
   #  cron { 'run pull-updates from Git':
   #    command => '/usr/bin/rsync -az /usr/local/bin/pull-updates',
   #    hour    => '*',
   #    minute  => '5',
   #  }

# PAGE 92 Scheduling a backup
    # Next line declares a cron resource named 'cat-pictures-backup'
    # cron { 'Back up cat-pictures':
      # Next lines sets the command to run...rsync command to back up all files and directories under /var/www/cat-pictures to /cat-pictures-backup...As with 'exec' resources, commands need to be qualified with their full path
    #  command => '/usr/bin/rsync -az /var/www/cat-pictures/ /cat-pictures-backup/',
      # Next line designates the hour the job is run
    #  hour    => '04',
      # Next line designates the minute the job is run. IF THE MINUTE IS NOT SPECIFIED, IT DEFAULTS TO '*'; THAT IS, IT RUNS EVERY MINUTE. 
      # 
      # ALWAYS SPECIFY THE MINUTE!
      #
    #  minute  => '00',
   # }

# PAGE 88
  #  exec { 'Run my arbitrary command':
  #    command => '/bin/echo I ran this command on `/bin/date` >/tmp/command.output.txt',
  #  }

# PAGE 82 - step 6
  include sudoers

# PAGE 80 - step 4
#  include ssh

# PAGE 73
  user { 'art':
    ensure => present,
    comment => 'Art Vandalay',
    home => '/home/art',
    managehome => true,
  }

# PAGE 77
  ssh_authorized_key { 'art_ssh':
    user => 'art',
    type => 'rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFBoLkAAkVcTsIOZnIYaS7NKzQebiqGLuGG9hZyYLd8ZZF6tPWCHatGqoLjhC/W0MaO/BGA4lPWQxZK4ifz+4+eoPZkX3xyVj1GIxyrxrdkIeI2qkw7QHupfjIogz7jFHpmWZT9HJU4Irqbt9SRRKl3/mD2Rp1kl06oRhjP4nTENP8RucgD33ymaPMY+pdUSyIA7igv8nKO+j0JOEmqJPldqC83ax0rVtaWqa9oO1qvpOA67x6grWFObnIF4WyqN/C+RBqzh4pJHzO7h1Cgt2FijKxEgAcafvj+mBE7plCLazsyWJ+ic+vrwwhniczn4tYScjFTLzUVqNzOfPra0S7'
  }

# PAGE 73
  user { 'testProfile':
    ensure => present,
    comment => 'test profile',
    home => '/home/test',
    managehome => true,
  }

# PAGE 77
  ssh_authorized_key { 'testProfile_ssh':
    user => 'testProfile',
    type => 'rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFBoLkAAkVcTsIOZnIYaS7NKzQebiqGLuGG9hZyYLd8ZZF6tPWCHatGqoLjhC/W0MaO/BGA4lPWQxZK4ifz+4+eoPZkX3xyVj1GIxyrxrdkIeI2qkw7QHupfjIogz7jFHpmWZT9HJU4Irqbt9SRRKl3/mD2Rp1kl06oRhjP4nTENP8RucgD33ymaPMY+pdUSyIA7igv8nKO+j0JOEmqJPldqC83ax0rVtaWqa9oO1qvpOA67x6grWFObnIF4WyqN/C+RBqzh4pJHzO7h1Cgt2FijKxEgAcafvj+mBE7plCLazsyWJ+ic+vrwwhniczn4tYScjFTLzUVqNzOfPra0S7'
  }


# PAGE 74
  #  ensure      => absent,
  #  }

# PAGE 65 - Yet another refactoring demonstration
  #  include nginx
  #  }

# PAGE 30
  file { '/tmp/hello':
    content => "Hello, world\n",
  }

}


# PAGE 65
node 'puppetDemo2' {
  include nginx
}

  
