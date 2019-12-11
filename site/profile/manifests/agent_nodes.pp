class profile::agent_nodes {
  include dockeragent
  # docker nodes
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  
  # ssh nodes
  host { 'web.puppet.vm':
    ensure => present,
    ip     => '172.18.0.2',
  }
  host { 'db.puppet.vm':
    ensure => present,
    ip     => '172.18.0.3',
  }
}
