# Creates package resources
#
# @example Standard configuration with Hiera
#   include '::create::packages'
#
#   create_packages:
#     git:
#       ensure: present
# 
class create::packages(){
    $packages = hiera_hash('create_packages', {})
    create_resources('package', $packages)
}
