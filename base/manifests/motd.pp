class base::motd {
	exec { 'reset_motd':
                command => 'echo * >> /etc/motd',
                path    => "/bin",
                user    => 'root',
                onlyif  => '/usr/bin/test -f /etc/motd',
        }

        file {	"/etc/motd":
                require => Exec['reset_motd'],
		ensure  => 'file',
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
 		content => template('base/motd.erb'),
		#source => "puppet:///modules/base/motd",
	}

}
