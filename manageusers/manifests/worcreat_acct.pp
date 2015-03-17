#
#
#

#define manageusers::create_account ( $user, $name, $uid, $password, $shell, $groups, $sshkeytype, $sshkey ) {
define manageusers::create_account (  $name, $uid, $password, $shell, $groups, $sshkeytype, $sshkey ) {

#   $homedir = '/home'
#
#

    $homedir = $operatingsystem ? {
         'Solaris'   => '/export/home',
         default     => '/home'
  }


    $username  = $title
#   $username  = $user


   user  { $username: 
        comment   => "$name",
        home      => "$homedir/$username",
	shell     => "$shell",
        uid       => "$uid",
	gid       => "$uid",
	managehome => 'true',
	password  => "$password",
	groups    => $groups,
	require   => Group[$title],
	 }
	

   group { $username:
	gid       => "$uid",	
	}

     ssh_authorized_key{ $username:
#    ssh_authorized_key{ $title:
	user	  => "$username",
	ensure    => present,
	type	  => "$sshkeytype",
	key 	  => "$sshkey",
	name	  => "$username",
	require   => User[$title],
	}

}
