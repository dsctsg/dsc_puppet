class clamav () {
  $packages = ['epel-release', 'clamav', 'clamav-data']
  
  package { $packages:
    ensure => present,
  }
}
