# This is a little modification to the 
# https://github.com/duxklr/manageusers
# This worked better for my scenario could not get the home directory
# created with the above. So I created it separately and require it in
# the user resource.

define manageusers::create_account ( $name, $uid, $password, $shell, $groups, $sshkeytype, $sshkey ) {

#   $homedir = '/home'    
    $homedir = $operatingsystem ? {
         'Solaris'   => '/export/home',
         default     => '/home'
  }


   $username  = $title

# define the user resource and require the home directory and 
# group creation.
#
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

# create the home directory.
# chown $username:$username /home/$username
# chmod 755 /home/$username	
   file { $username:
	path      => "$homedir/$username",
	ensure	  => directory,
	owner	  => $username,
	group	  => $username,
	mode	  => 0755,
	}

# create the group with the gid
# groupadd $username
   group { $username:
	gid       => "$uid",	
	}

# create the ssh key
   ssh_authorized_key{ $username:
	user	  => "$username",
	ensure    => present,
	type	  => "$sshkeytype",
	key 	  => "$sshkey",
	name	  => "$username",
	require   => User[$title],
	}

}
