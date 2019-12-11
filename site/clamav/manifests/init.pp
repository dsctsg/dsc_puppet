class clamav () {
  $packages = ['clamav', 'clamav-data']
  
  package { $packages:
    ensure => present,
  }
}
