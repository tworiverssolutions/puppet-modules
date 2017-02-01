# If there is no hirea datat then it will use the defaults
class ntp ($package = $ntp::params::package_name)  inherits ntp::params {
	
	package { 'ntp':
                name   => $package,
		ensure => present,
	}

        include ntp::file
        include ntp::service

}
