# Creates group resources
#
# @example Standard configuration with Hiera
#   include '::create::groups'
#
#   create_groups:
#     mygroup: {}
# 
class create::groups (){
    $groups = hiera_hash('create_groups', {})
    create_resources('group', $groups)
}
