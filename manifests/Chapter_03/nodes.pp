node 'puppetdemo' {
  package { 'nginx':
    ensure => '1.4.6-1ubuntu3.1',
  }

  package { 'apache2.2-common':
    ensure => absent
  }
  
  package { 'puppet':
    ensure => latest,
  }
}

