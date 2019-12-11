class profile::base {
  user { 'admin':
    ensure => present,
  }
  
  # allow ssh access from root@master.puppet.vm
  include profile::ssh_server
}
