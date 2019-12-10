# only one node matches, no inheritance with node
node default {
}

node 'master.puppet.vm' {
  include role::master_server
}
