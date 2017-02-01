class base::hosts {
	
	file_line { 'Puppet_Managed':
		path => '/etc/hosts',
		line => '#### BELOW CONTENTS MANAGED BY PUPPET ###',
	}	

	file_line { 'Ovirt_Host':
		path => '/etc/hosts',
		line => '192.168.12.2	smackovirt01.localdomain',
	}

	file_line { 'Puppet_Host':
		path => '/etc/hosts',
		line => '192.168.12.5	smackpuppet01.localdomain',
	}

	file_line { 'Centos01_Host':
		path => '/etc/hosts',
		line => '192.168.12.50	smackcentos01.localdomain',
	}

	file_line { 'Centos02_Host':
		path => '/etc/hosts',
		line => '192.168.12.51	smackcentos02.localdomain',
	}

	file_line { 'Ubuntu_Host':
		path => '/etc/hosts',
		line => '192.168.12.52	smackubuntu01.localdomain',
	}

	file_line { 'GitLab_Host':
		path => '/etc/hosts',
		line => '192.168.12.6	smackgitlab01.localdomain',
	}
}
