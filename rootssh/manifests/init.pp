
class rootssh {

	user { 'root':
	    ensure   	     => present,
	    purge_ssh_keys   => true, 
	}

	ssh_authorized_key { 'root@localhost.net':
	    user     => 'root',
	    type     => ssh-rsa,
	    key	     => 'your keys here',	

	}

}
