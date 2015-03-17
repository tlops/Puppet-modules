# This module manages the ssh service and configurations
# changes should only be mad at the master ...modules/sshd
# /files/sshd_config

# written by devtlops 2015


class sshd {
	package { 'openssh-server':
		ensure   => present,				# installs the ssh package
		before   => File['/etc/ssh/sshd_config'],
	}
	file { '/etc/ssh/sshd_config':				# configures the /etc/ssh/sshd_config file
		ensure   => file,
		mode     => 0600,
		source   => 'puppet:///modules/sshd/sshd_config', # with the changes here.
	}
	service { 'ssh':
		ensure     => running,				# ensure the service is running
		enable     => true,
		subscribe  => File[ '/etc/ssh/sshd_config' ],	# and changes are resynced.
	}

	->
        notify { 'after':
                message  => 'NOTIFICATION: Package openssh has been installed and configured.'
        }
}
