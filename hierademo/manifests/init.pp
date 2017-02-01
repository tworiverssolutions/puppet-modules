class hierademo ($domain_name= "default.domain", $api_key = "default_key") {
        #To use hiera variables you have to set vars like this:
        $domainname = hiera('domain_name')
        $apikey = hiera('api_key')
        notify{ "The domain name var is: ${domain_name}": }
        notify{ "The api key value is: ${api_key}": }

}
