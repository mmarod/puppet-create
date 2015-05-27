# Includes create::[type]
#
# @example Standard configuration
#   # In your manifest
#   include '::create'
#
#   # In your Hiera data
#   create::types:
#     - crons
#     - execs
#
# @param $types [Array] An array of types to include in creation.
#
class create (  $types  = [ 'crons',
                            'execs',
                            'files',
                            'packages',
                            'services',
                            'pams',
                            'ssh_authorized_keys',
                            'users',
                            'yumrepos' ] ) {
    $include_types = regsubst($types,'.*','::create::\0')
    include $include_types
}
