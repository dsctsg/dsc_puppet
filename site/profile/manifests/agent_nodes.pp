class profile::agent_nodes {
  include dscagent
  dscagent::node {'web.puppet.vm':}
  dscagent::node {'db.puppet.vm':}
}
