# Creates logrotate_rule resources
#
# @example Standard configuration with Hiera
#   include '::create::logrotate_rules'
#
#   create_logrotate_rules:
#     messages:
#       path: /var/log/messages
#       rotate: 5
#       rotate_every: week
#       postrotate: /usr/bin/killall -HUP syslogd
# 
class create::logrotate_rules(){
    $logrotate_rules = hiera_hash('create_logrotate_rules', {})
    create_resources('logrotate::rule', $logrotate_rules)
}
