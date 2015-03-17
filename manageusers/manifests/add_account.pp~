# This is where you manage the user accounts that will
# be created  by puppet.
#
# Used to define/realize users on Puppet-managed systems
#

class manageusers::add_account() { 

#    manageusers::create_account {'jdoe@vbg-puppet-c1.int.prnw.net':
  manageusers::create_account {'jdoe':
 #   user	    => 'jdoe',
    uid             =>  1010,
    name            =>  'John Doe',
    shell           =>  '/bin/bash',
    groups	    =>  ["sudo"],
    password        =>  '$1$xyz$8/1NyChEn./4Qd29y3cyr.',     #johndoe  # openssl passwd -1 -salt xyz johndoe
    sshkeytype      =>  ssh-rsa,
    sshkey	    =>  "AAAAB3NzaC1yc2EAAAADAQABAAABAQDBnk9ALmWBIl7kn1eUjjWH2zvpI1LEeofaJZF1QtMGGtnVhhrkR6Z8pwPv+yNos5rdAHbalBMPARge3Bwv418PsaAvquZiioj6r56DRgRrcWUJma+AoGaY+MuzH8zQHBz+B+BHW+SHr8FriUY85WahhZid/IRHwC0YK3HrrWXMvAJcRkmPxYwb6xE7triKlg3Q64pForAfODz/4I4WGXULaxRIZhUFi4FoBFZ7uQm/HvYWZo+j8pjWCtOXIuOYtUt3wR4JPSBYRubG+9yPW4aQQJSg15/WT3ZqWZ8FD9upgrwyMHXGKweAd2uHsP21r2RWSlQyZHAH3Yov7QSVanSF", # jdoe@vbg-puppet-c1.int.prnw.net", 
	}
}

# Creating account for devtlops from MAC book
  class manageusers::add_account() { 
     manageusers::create_account {'devtlops':
        uid             =>  1001,
        name            =>  'Falade Olumuyiwa Tolulope',
        shell           =>  '/bin/bash',
        groups	        =>  ['sudo'],
        password        =>  '$1$xyz$MsqLHcz4wbzAxCSacm5nj1',     # openssl passwd -1 -salt xyz passwd
        sshkeytype      =>  ssh-rsa,
        sshkey	    =>  "AAAAB3NzaC1yc2EAAAADAQABAAABAQCy9pBMGAoozxzGIM1UQ4QNOblOXsBt41KIyBd8gYpUWvHQusBRDwolKscWOyxQxqSyHhK9PHwB6ICm/HPt3OX7Y0fsLfFB32bHPq9m4Fz6x0V01LteBQVCb3F6BDn8xB6YX239avWCGRyN0nVl/QFfGW9L6Yzfbe8YGNmL0rGBEzjR20VmI2fNoHQRZLdlq3+7FPjs8tODamZ6xtZ8OMyDGx/arG0qCHMaMQq+OZ/MMmcMwZcu3E4H6ftXybFyiWAR6pJOy1kUctaHUbRhLywD4q4byjFZxfIR9pDbKhnmMJp18BFtElzft/rqwKyfmw217JhPhAs4qfnA+jxgDRPN",
	}
}

