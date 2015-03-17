#
#
#

define manageusers::create_account ( $name, $uid, $password, $shell, $groups, $sshkeytype, $sshkey ) {


    $homedir = $operatingsystem ? {
         'Solaris'   => '/export/home',
         default     => '/home'
  }


     $username  = $title
#    $username  = $user


   user  { $username: 
        comment   => "$name",
	shell     => "$shell",
        uid       => "$uid",
	gid       => "$uid",
	managehome => 'true',
	password  => "$password",
	groups    => $groups,
	require   => [Group[$username], File["$homedir/$username"]]
	 }
	
   file { $username:
	path      => "$homedir/$username",
	ensure	  => directory,
	owner	  => $username,
	group	  => $username,
	mode	  => 0755,
	}

   group { $username:
	gid       => "$uid",	
	}

   ssh_authorized_key{ $username:
	user	  => "$username",
	ensure    => present,
	type	  => "$sshkeytype",
	key 	  => "$sshkey",
	name	  => "$username",
	require   => User[$title],
	}

}
