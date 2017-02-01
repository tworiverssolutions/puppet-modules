class localusers {
	user { 'admin':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/admin',
		gid        => 'wheel',
		managehome => true,
		password   => '$6$4UBhWS/7dnvvBc5E$8sSnrJq730sqVj4L1bt7VNAQauHz04zzf2Tewd/4qQIRP5sEoDFXU884PHzvn5B2wT3Dsp76mcyBTybsk7mzQ1',
	}
	
	user { 'testcustomer':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/testcustomer',
		gid        => 'customers',
		managehome => true,
	}

}
