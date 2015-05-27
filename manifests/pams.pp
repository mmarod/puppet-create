# Creates pam resources
#
# @example Standard configuration with Hiera
#   include '::create::pams'
#
#   create_pams:
#     Remove common-password pam_deny default:
#       ensure: absent
#       service: common-password
#       type: password
#       module: pem_deny.so
# 
class create::pams(){
    $pams = hiera_hash('create_pams', {})
    create_resources('pam', $pams)
}
