# This file is managed by Puppet. 

# PAGE 79

class ssh {
  service { 'ssh':
    ensure  => running,
  }

  file { '/etc/ssh/sshd_config':
    source => 'puppet:///module/ssh/sshd_config',
    notify => Service['ssh'],
    owner => 'root',
    group => 'root',
  }
}

