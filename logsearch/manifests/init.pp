# This module describes the logsearch script
# the  script allows for easy reading of log files
# devtlops 2015

class logsearch {

        file { 'logsearch':
            path     => '/usr/local/bin/logsearch',
            ensure   => file,
            owner    => root,
            group    => root,
            mode     => 0755,
            source   => 'puppet:///modules/logsearch/logsearch',
        }
}

