define apache::reverseproxy($port = 80,
                            $servername,
                            $documentroot,
                            $proxies) {
  file {"/etc/httpd/conf.d/${name}.conf":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    content => template("apache/reverseproxy.conf.erb"),
    notify  => Service['httpd'],
  }
}
