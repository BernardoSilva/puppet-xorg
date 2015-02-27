# Class xorg
#
# Class to install xorg package

class xorg(){
  case $::osfamily {
    'RedHat': {
      $xorg_package_name = 'xorg-x11-server-Xorg'
    }
    'Debian': {
      $xorg_package_name = 'Xorg'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }


  package { "${xorg_package_name}":
    alias  => 'xorg',
    ensure => present,
  }

}