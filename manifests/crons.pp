# Creates cron resources
#
# @example Standard configuration with Hiera
#   include '::create::crons'
#
#   create_crons:
#     logrotate:
#       command: /usr/sbin/logrotate
#       user: root
#       hour: 2
#       minute: 0
# 
class create::crons(){
    $crons = hiera_hash('create_crons', {})
    create_resources('cron', $crons)
}
