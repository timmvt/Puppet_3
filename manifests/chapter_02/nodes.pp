node 'puppetdemo' {
  file { '/tmp/hello':
    content => "\n umm Hello world of nodes\n"
  }
}

