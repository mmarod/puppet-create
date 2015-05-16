# Creates sshkey resources
#
# @example Standard configuration with Hiera
#   include '::create::sshkeys'
#
#   create_sshkeys:
#     '%{::hostname}':
#       key: somekey
# 
class create::sshkeys (){
    $sshkeys = hiera_hash('create_sshkeys', {})
    create_resources('sshkey', $sshkeys)
}
