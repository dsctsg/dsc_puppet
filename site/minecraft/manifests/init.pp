class minecraft (
  # use variable to make it easily updated
  $url='https://launcher.mojang.com/v1/objects/e9f105b3c5c7e85c7b445249a93362a22f62442d/server.jar',
  $mc_dir='/opt/minecraft'
){  
  package { 'java':
    ensure => present,
  }
  
  file { $mc_dir:
    ensure => directory,
  }
  
  file { "${mc_dir}/server.jar":
    ensure => file,
    source => $url,
    # make sure ready for service
    before => Service['minecraft'],
  }
  
  file { "${mc_dir}/eula.txt":
    ensure  => file,
    content => 'eula=true',
  }
  
  file { '/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
    # changes trigger notify
  }
  
  service { 'minecraft':
    ensure  => running,
    enable  => true,
    # enforcing order
    require => [Package['java'],File["${mc_dir}/eula.txt"],File['/etc/systemd/system/minecraft.service']],
  }
}
