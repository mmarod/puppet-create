# Creates host resources
#
# @example Standard configuration with Hiera
#   include '::create::hosts'
#
#   create_hosts:
#     puppet.example.com:
#       ip: 192.168.20.100
# 
class create::hosts (){
    $hosts = hiera_hash('create_hosts', {})
    create_resources('host', $hosts)
}
