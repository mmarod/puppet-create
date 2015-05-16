# Creates user resources
#
# @example Standard configuration with Hiera
#   include '::create::users'
#
#   create_users:
#     joe:
#       managehome: true
#       shell: /bin/bash
# 
class create::users (){
    $users = hiera_hash('create_users', {})
    create_resources('user', $users)
}
