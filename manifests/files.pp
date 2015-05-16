# Creates file resources
#
# @example Standard configuration with Hiera
#   include '::create::files'
#
#   create_files:
#     /tmp/myfile:
#       content: mycontent
#       mode: '0644'
# 
class create::files (){
    $files = hiera_hash('create_files', {})
    create_resources('file', $files)
}
