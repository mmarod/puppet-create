# Creates nagios_service resources
#
# @example Standard configuration with Hiera
#   include '::create::nagios_services'
#
#   create_nagios_services:
#     myservice:
#       check_command: /usr/local/bin/mycheck
# 
class create::nagios_services (){
    $nagios_services = hiera_hash('create_nagios_services', {})
    create_resources('nagios_service', $nagios_services)
}
