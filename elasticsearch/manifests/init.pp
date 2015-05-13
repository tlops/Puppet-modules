class elasticsearch {
	file {'elasticlog':
		path	 => '/usr/local/bin/elasticlog',
		ensure	 => file,
		owner	 => root,
		group	 => root,
		mode	 => 0755,
		source 	 => 'puppet:///modules/elk/elasticlog',
		notify	 => Exec[elasticlog],
	}

	exec {'elasticlog':
		command	 => 'elasticlog', # the script that installs and configures the the logstash-forwarder
		path	 => ["/usr/local/bin", "/bin"],
		creates	 => '/etc/logstash-forwarder.conf' # if this file is missing run the command above
	}

	file {'logstash-forwarder.conf':
		path     => '/etc/logstash-forwarder.conf', 	# logstash-forwarder config file
                ensure   => file,
                owner    => root,
                group    => root,
                mode     => 0664,
                source   => 'puppet:///modules/elk/logstash-forwarder.conf',
	}

	file {'logstash-forwarder.crt':
                path     => '/etc/pki/tls/certs/logstash-forwarder.crt', # the SSL cert
                ensure   => file,
                owner    => root,
                group    => root,
                mode     => 0664,
                source   => 'puppet:///modules/elk/logstash-forwarder.crt',
        }

}
