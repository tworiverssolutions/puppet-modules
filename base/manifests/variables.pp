class base::variables {
	$local_var = "localvariable"
	$top_scope = "written into the class" 
	notify { "${top_scope} is your variable": }
	notify { "${::top_scope} is the actual top scope var in site.pp": }
	notify { "${node_scope} is your node scope variable": }
	notify { "${local_var} is your node scope variable": }
	notify { "${::operatingsystem} is your operating system": }
# using the :: before the variable will use the highest top scope variable 	

}
