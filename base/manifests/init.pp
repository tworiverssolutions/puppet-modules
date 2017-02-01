class base {
	
	$dnsutil = $osfamily ? {
		'RedHat' => 'bind-utils',
		'Debian' => 'dnsutils',
	}
	
	#Schedule Metaparamater
	
	$systemupdate = $osfamily ? {
		'RedHat' => '/usr/bin/yum update -y',
		'Debian' => '/usr/bin/apt-get upgrade -y',
	} 
	
	package { ['tree',$dnsutil]:
		ensure => present,
	}

	#Allows you to execute direct commads on a linux System
	
	
	schedule { 'system-daily':
		period => daily,
		range  => '00:00 - 01:00',
		 
	}
	exec { $systemupdate: 
		schedule => 'system-daily',
	
	}

}
