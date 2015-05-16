# Creates nagios_command resources
#
# @example Standard configuration with Hiera
#   include '::create::nagios_commands'
#
#   create_nagios_commands:
#     mycommand:
#       command_line: /usr/local/bin/mycommand.sh
# 
class create::nagios_commands (){
    $nagios_commands = hiera_hash('create_nagios_commands', {})
    create_resources('nagios_command', $nagios_commands)
}
