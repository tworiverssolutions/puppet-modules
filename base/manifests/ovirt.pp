class base::ovirt {        

        if $facts['os']['family'] == 'RedHat' {
                
                package {'epel-release':
                        ensure => present,
                        notify => Package[ovirt-guest-agent],
                }

                package { 'ovirt-guest-agent':
                        ensure => present,
                }

                service { 'ovirt-guest-agent':
                        ensure => running,
                        enable => true,
                }
        }

}
