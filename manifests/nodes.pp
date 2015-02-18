# This file is managed by Puppet. Any manual changes will be lost.
# This line added 2015-02-17 13:59

# nodes.pp file


node 'puppetDemo' {
  # Declares user
  user { 'art':
  
    # Ensures user is present
    ensure     => present,

    # Specifics about user
    comment    => 'Art Vandalay',

    # Sets the path to user's home directory
    home       => '/home/art',

    # Home directory not created without the following line
    managehome => true,

# PAGE 74
#    ensure      => absent,
  }

# PAGE 77
  ssh_authorized_key { 'art_ssh':
    user => 'art',
    type => 'rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFBoLkAAkVcTsIOZnIYaS7NKzQebiqGLuGG9hZyYLd8ZZF6tPWCHatGqoLjhC/W0MaO/BGA4lPWQxZK4ifz+4+eoPZkX3xyVj1GIxyrxrdkIeI2qkw7QHupfjIogz7jFHpmWZT9HJU4Irqbt9SRRKl3/mD2Rp1kl06oRhjP4nTENP8RucgD33ymaPMY+pdUSyIA7igv8nKO+j0JOEmqJPldqC83ax0rVtaWqa9oO1qvpOA67x6grWFObnIF4WyqN/C+RBqzh4pJHzO7h1Cgt2FijKxEgAcafvj+mBE7plCLazsyWJ+ic+vrwwhniczn4tYScjFTLzUVqNzOfPra0S7'
}
# PAGE 34
#  package { 'nginx':
#    ensure => installed,
#  }

# PAGE 73
#  user { 'art':
#    ensure => present,
#    comment => 'Art Vandalay',
#    home => '/home/art',
#    managehome => true,
#  }

# PAGE 39 - This is a demonstration of refactoring
#  include nginx
#}

# PAGE 55
#node 'puppetDemo2' {
  
# PAGE 65 - Yet another refactoring demonstration
#  include nginx
#  }

# PAGE 80 - step 4
  include ssh

# PAGE 82 - step 6
  include sudoers


}
