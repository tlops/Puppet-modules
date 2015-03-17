# This modlue ensures the installation of the vim package
# and creates the .vimrc file for the root user.

class vim {
	package { 'vim' :
		ensure   => present,
		before   => File['/root/.vimrc'],
	}
	
	file { '/root/.vimrc':
		ensure   => file,
		owner    => root,
		group    => root,
		mode     => 0640,
		source   => 'puppet:///modules/vim/vimrc'
	}

	->
        notify { 'after':
                message  => 'NOTIFICATION: Package vim and /root/.vimrc has been created.'
	}
}
