# only one node matches, no inheritance with node
node default {
}

node 'master.puppet.vm' {
  include role::master_server
}

#node 'minecraft.puppet.vm' {
node 'clamav.puppet.vm' {
  include role::clamav_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
