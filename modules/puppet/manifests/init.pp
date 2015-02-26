# Source: Safari book - Puppet 3 Cookbook

# PDF of page on file

class puppet {
  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode   => '0755'
  }
}


