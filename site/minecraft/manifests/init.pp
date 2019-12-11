class minecraft {
  package { 'java':
    ensure => present,
  }
  
  file { '/opt/minecraft':
    ensure => directory,
  }
  
  file { '/opt/minecraft/server.jar':
    ensure => file,
    source => 'https://launcher.mojang.com/v1/objects/e9f105b3c5c7e85c7b445249a93362a22f62442d/server.jar',
  }
  
  file { '/opt/minecraft/eula.txt':
    ensure  => file,
    content => 'eula=true',
  }
  
  file { '/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  
  service { 'minecraft':
    ensure => running,
    enable => true,
  }
}
