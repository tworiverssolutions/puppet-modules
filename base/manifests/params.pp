class base::params {
	
	case $::osfamily {
		'RedHat': { $ssh_name = 'sshd' }
		'Debian': { $ssh_name = 'ssh' }
		'default': { fail('OS NOT SUPPORTED BY PUPPET MODULE SSH') }
	}
	
	#Below is shorthand of the above case statement
	#$ssh_name = $osfamily {
	#	'Redhat'  => 'sshd',
	#	'Debian'  => 'ssh',
	#	'default' => 'value',
	#}


}
