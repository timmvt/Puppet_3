# This file is managed by Puppet. Any manual changes will be lost.

# Manage nginx webserver

#class nginx { 		# PAGE 41
#  package { 'apache2':
#    ensure => absent,
#  }

#  package { 'nginx':
#    ensure => installed,
#    require => Package['apache2'],
#  }

#  service { 'nginx':
#    ensure => running,
#    require => Package['nginx'],
#  }
#}

class nginx { # PAGE 47 - managing cat pictures
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure  => running,
    enable  => true,
    require => Package['nginx'],
  }

  file { '/etc/nginx/sites-enabled/default':
    ensure  => absent,    
#    source => 'puppet:///module/nginx/cat-pictures.conf',
#    notify => Service['nginx'],
  }

# from the exercise at the end of Chapter 3
#  file { '/var/www/cat-directory-made-by-puppet':
#    ensure => 'directory',
#    owner => 'root',
#    mode => 777,
#  }

#  file { '/var/www/cat-directory-made-by-puppet/index.html':
#    content => "This file was made by and is managed by puppet",
#  }

  # Creates/adds the index.html page

  file { '/var/www/cat-pictures/index.html':
    content => "# This file is managed by Puppet. Any changes will result in its loss\n\nI can haz cat pictures.\n\nI just added this line on Feb 13, 2015 at 1355\nand now at 1357\nand again at 1358\n",    
  }
  



}



