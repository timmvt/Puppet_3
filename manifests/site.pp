# This file is managed by Puppet. Any manual changes or edits will be lost.

# site.pp file

import 'nodes.pp'

file { '/tmp/hello':
  content => "Hello, world\n",
}

#TT ADDED AS A TEST 2015-02-18 12:28 to replace the import statement

#include 'nodes.pp'  -- does NOT work

