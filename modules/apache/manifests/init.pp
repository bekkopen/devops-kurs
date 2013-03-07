class apache {
  service {'iptables':
    ensure => stopped,
  }

  package {'httpd':
    ensure  => present,
    require => Service['iptables'],
  }

  file {'/var/www/html':
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    require => Package['httpd'],
  }

  file {'/etc/httpd/conf/httpd.conf':
    ensure  => present,
    source  => "puppet:///modules/apache/httpd.conf",
    owner   => 'root',
    group   => 'root',
    require => Package['httpd'],
    notify  => Service['httpd'],
  }

  service {'httpd':
    ensure => running,
  }
}
