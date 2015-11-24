# Class: samba::client
#
# Samba client - mounts SMB shares locally.
#
# For all main options the smbclient man pages.
#
# Sample Usage :
#  include samba::client
#
class samba::client (
  $shares					= {},
) inherits ::samba::params {

  # Main cifs-utils package
  package { $::samba::params::utils_package: ensure => 'installed' }

  define mount_share(mount{${name}: name => ${mount_point}, ensure => 'mounted', device => ${name}, username => ${username}, password => ${password}, domain => ${domain}, fstype => 'cifs', atboot => true, options => 'defaults',})
  create_resources(mount_share, $shares)
  #
}
