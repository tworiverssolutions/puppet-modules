class base::ssh {
	
	package { 'openssh-package':
		name => 'openssh-server',
		ensure => present,
	}

	file { '/etc/ssh/sshd_config':
		ensure  => file,
		owner   => 'root',
		group   => 'root',
		source  => 'puppet:///modules/base/sshd_config',
		require => Package['openssh-package'],
		notify  => Service['ssh_service'],
	}
        
        file { 'ssh_root_folder':
                name   => '/root/.ssh',
                ensure => directory,
        }

        #Add austen macbook pub key to authorized_keys
        
        file { 'austen_macbook_pub_key':
                ensure  => file,
                owner   => 'root',
                group   => 'root',
                source  => 'puppet:///modules/base/authorized_keys',
                path    => '/root/.ssh/authorized_keys', 
                require => [ Package['openssh-package'], File['ssh_root_folder'] ],
                notify  => Service['ssh_service'],
        } 

        
	#Manage ssh with puppet and listens to the sshd_config file. If puppet makes a change it will restart service as per subscribe
	service { 'ssh_service':
		name      => $base::params::ssh_name,
		#name      => $ssh_name, IF YOU WANT TO INHEREIT FROM THE base::params class
		ensure    => running,
		alias     => 'sshservice',
		enable    => true,
		#subscribe  =>  File['/etc/ssh/sshd_config'],
	}
}
