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

  define mount_share(
    #Set variables
	$options = "rw,_netdev,user=${domain}/${username},password=${password}"
	
    mount{ ${mount_point}:
	  name => ${mount_point},
	  ensure => 'mounted',
	  atboot => true,
	  device => ${share},
	  fstype => 'cifs',
	  options => $options,
	}
  )
  create_resources(mount_share, $shares)
  #
}