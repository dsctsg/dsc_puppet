class profile::agent_nodes {
  include dockeragent
  # docker nodes
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  # dockeragent::node {'minecraft.puppet.vm':}
  dockeragent::node {'clamav.puppet.vm':}

  # ssh nodes
  host { 'web.puppet.vm':
    ensure => present,
    ip     => '172.18.0.2',
  }
  host { 'db.puppet.vm':
    ensure => present,
    ip     => '172.18.0.3',
  }
  #host { 'minecraft.puppet.vm':
  #  ensure => present,
  #  ip     => '172.18.0.4',
  #}
  host { 'clamav.puppet.vm':
    ensure => present,
    ip     => '172.18.0.5',
  }
}
