class profile::agent_nodes {
  include docker
  docker::image {'web.puppet.vm':}
  docker::image {'db.puppet.vm':}
}
