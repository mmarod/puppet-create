# Creates service resources
#
# @example Standard configuration with Hiera
#   include '::create::services'
#
#   create_services:
#     nagios:
#       ensure: running
# 
class create::services(){
    $services = hiera_hash('create_services', {})
    create_resources('service', $services)
}
