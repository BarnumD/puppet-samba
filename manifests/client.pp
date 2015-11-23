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
  $mount_point                = '/mnt/smb',
) inherits ::samba::params {

}
