define apache::vhost($source,
                     $ipAddress,
                     $port = '80',
                     $owner = 'root',
                     $group = 'root') {

  $markupDir = "/var/www/html/${name}"

  file {$markupDir:
    ensure => directory,
    owner  => $owner,
    group  => $group,
  }

  file {"${markupDir}/welcome.html":
    ensure  => present,
    source  => $source,
    owner   => $owner,
    group   => $group,
    require => File[$markupDir],
  }

  file {"/etc/httpd/conf.d/${name}.conf":
    ensure  => present,
    content => template('apache/vhost.conf.erb'),
    owner   => $owner,
    group   => $group,
    require => File["${markupDir}/welcome.html"],
    notify  => Service['httpd'],
  }
}
