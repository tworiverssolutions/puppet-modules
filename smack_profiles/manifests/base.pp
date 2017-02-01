class smack_profiles::base {
        include base
        include base::params
        include base::ssh 
        include base::variables
        include localusers
        include localusers::groups::customers
        include localusers::groups::wheel
        include ntp
}
