# Creates exec resources
#
# @example Standard configuration with Hiera
#   include '::create::execs'
#
#   create_execs:
#     whoami:
#       command: /usr/bin/whoami
# 
class create::execs (){
    $execs = hiera_hash('create_execs', {})
    create_resources('exec', $execs)
}
