
class rootssh {

	user { 'root':
	    ensure   	     => present,
	    purge_ssh_keys   => true, 
	}

	ssh_authorized_key { 'root@procera-mbp.vbg.se.prnw.net':
	    user     => 'root',
	    type     => ssh-rsa,
	    key	     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDfVx1IsJOnjuv7UIU0asmW77Due1fzu6MUeBlEohclzuMpXKcB0jJJqCeiFO48n840k3pIs7AEOy5nlrBAf0v2S7G7P/99D1UGUHrX0RADIsGUH11BrKlablgz9iP9wG9wjFXUS6Au2WyFLq6vlgKI/cwsFagPXxDqnlhvq/LEPOV6Bgi0ww45lqDf5fwWvbm1FPoKTVqC89bgkCR8M2BIzkrc9giiVtFs1PZoZnvZxqsfXZvaocncyp4bWFTSiNvjdeMB+X5sG9hmCChmzvNtkkZbfWOvZpZBPRzNSihqrkjjPrOCoyCfrZW2IgCQcuom6vNKQBKboz60RSu4quBP',	

	}

}
