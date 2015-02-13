node 'puppetdemo' {
  file { '/tmp/hello001':
    content => "Attempt 001 of node importing\n"
  }
}


