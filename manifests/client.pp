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

  # Main client package
  package { $::samba::params::client_package: ensure => 'installed' }

  
  
}
