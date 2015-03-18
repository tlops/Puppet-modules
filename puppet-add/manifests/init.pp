# this modules adds the script that joins
# agents to the server 
# its based on puppet 3.7.4

class puppet-add {

	file { 'puppet-add':
	    path     => '/bin/puppet-add',
	    ensure   => file,
	    mode     => 0755,
 	    source   => 'puppet:///modules/puppet-ad'/puppet-add',
	    subscribe => File['/bin/puppet-add'],                                                     
	} 

}
