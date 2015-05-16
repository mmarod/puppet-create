# Creates yumrepo resources
#
# @example Standard configuration with Hiera
#   include '::create::yumrepos'
#
#   create_yumrepos:
#     'myrepo':
#       baseurl: ...
# 
class create::yumrepos (){
    $yumrepos = hiera_hash('create_yumrepos', {})
    create_resources('yumrepo', $yumrepos)
}
