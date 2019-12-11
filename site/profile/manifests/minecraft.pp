class profile::minecraft {
  #include minecraft
  class { 'minecraft':
    # change installation directory on the fly, but this impact minecraft.service file
    # use tempplate to resolve that
    mc_dir => '/srv/minecraft',
  }
}
