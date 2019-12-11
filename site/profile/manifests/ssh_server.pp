class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key   => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8S5lK/bgp4Zr6Qy2wYBlzAP/WkF4KHOZNpMkmD4QNTRqqwK71LRTBL7BF+GGtuMBFlShLyB75omDROF6KepDlamJxu0ZE1DCG63YcJ6ajgj404Zb5Gc0cStBrlt6eVFZKHJahlr4A82QJUlGbT0/hfpqYkrWkMwSnd/DUu2CrvgUMhifqqlRKXfkXFFEdFX+uXA4R51VMCspratpy54KtjbylTinIeufOqAqjdynSxPx6I/+hCQMsPWnmCec19GQ2EQFHTiaTSlvVWsUqBczdgPvxx+Pi8R6OEtUROT4SlYB3Ce7w5qOgMD+M2D9HX/hvYmaYFaUgkRhnE1TD2FZT',
  }
}
