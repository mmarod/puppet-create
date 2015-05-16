# Creates nagios_host resources
#
# @example Standard configuration with Hiera
#   include '::create::nagios_hosts'
#
#   create_nagios_hosts:
#     myhost: {}
# 
class create::nagios_hosts (){
    $nagios_hosts = hiera_hash('create_nagios_hosts', {})
    create_resources('nagios_host', $nagios_hosts)
}
