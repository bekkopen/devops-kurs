node base {
  include base
}

node 'web.lan' inherits base {
  include apache

  apache::vhost {"startside":
    source    => "/vagrant/manifests/sites/startside_index.html",
    ipAddress => "*",
    port      => '8080',
  }

  apache::vhost {"enannenside":
    source    => "/vagrant/manifests/sites/enannenside_index.html",
    ipAddress => "*",
    port      => '8081',
  }

  apache::reverseproxy {"google":
    port         => 80,
    servername   => "startside.tld",
    documentroot => "/var/www/html/startside",
    proxies      => {"/google" => "http://www.google.no", "/bing" => "http://www.bing.com"}
  }
}

node default inherits base {
}
