class base::motd {
	file {	"/etc/motd":
		ensure  => 'file',
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
 		content => template('base/motd.erb'),
		#source => "puppet:///modules/base/motd",
	} 
}
