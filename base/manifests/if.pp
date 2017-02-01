class base::if {
	if $::hostname =~ /^smackpuppet(\d+)/ {
		notice("You have arrived at server $0 ")
	}


}

#  The $0  will contain whatever $::hostname is evaluated
