class profile::agent_nodes {
  include docker
  docker::node {'web.puppet.vm':}
  docker::node {'db.puppet.vm':}
}
