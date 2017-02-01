class filedemo {
	
	File {
		owner => 'root',
		group => 'customers',
		mode  => '660', 
	}

	$homedir = '/root'

	file { "${homedir}/myfile1.txt":
		content => 'My file one content',
		ensure => present,
	}

	file { "${homedir}/myfile2.txt":
		content => 'THis is content for file 2',
		ensure  => present,
	}
	
	file { "${homedir}/myfile3.txt":
		content => 'this is stuff for file 3',
		ensure  => present,
		owner   => 'admin',
		group   => 'root',
	}
	
	file { '/root/motd':
		ensure  => present,
		source  => 'puppet:///modules/filedemo/motd',
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
	     }

	file { '/etc/motd':
		ensure => link,
		target => '/root/motd',
	     }
}
