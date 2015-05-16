# Creates ssh_authorized_key resources
#
# @example Standard configuration with Hiera
#   include '::create::ssh_authorized_keys'
#
#   create_ssh_authorized_keys:
#     'joe@example.com':
#       user: joe
#       type: ssh-rsa
#       key: AAAAB3NzaC1yc2EAAAABIwAAAQEAy5mtOAMHwA2ZAIfW6Ap70r+I4EclYHEec5xIN59ROUjss23Skb1OtjzYpVPaPH8mSdSmsN0JHaBLiRcu7stl4O8D8zA4mz/vw32yyQ/Kqaxw8l0K76k6t2hKOGqLTY4aFbFISV6GDh7MYLn8KU7cGp96J+caO5R5TqtsStytsUhSyqH+iIDh4e4+BrwTc6V4Y0hgFxaZV5d18mLA4EPYKeG5+zyBCVu+jueYwFqM55E0tHbfiaIN9IzdLV+7NEEfdLkp6w2baLKPqWUBmuvPF1Mn3FwaFLjVsMT3GQeMue6b3FtUdTDeyAYoTxrsRo/WnDkS6Pa3YhrFwjtUqXfdaQ==
# 
class create::ssh_authorized_keys (){
    $ssh_authorized_keys = hiera_hash('create_ssh_authorized_keys', {})
    create_resources('ssh_authorized_key', $ssh_authorized_keys)
}
