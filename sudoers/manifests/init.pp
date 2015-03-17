# This module handles the creation of the sudoers file
# edit the file in ..modules/sudoers/files/sudoers to 
# make system wide changes

# devtlops 2015

class sudoers {
	package { 'sudo':
		ensure   => present,
	}

	file { 'sudoers':
		path       => '/etc/sudoers',
		ensure     => present,
		mode       => 0440,
		source     => 'puppet:///modules/sudoers/sudoers',
		require    => Package['sudo'],
		subscribe  => File[ '/etc/sudoers' ],
		}

	->
	notify { 'after':
		message    => 'NOTIFICATION: file /etc/sudoers updtated.'

	}
}
