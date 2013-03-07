node base {
  include base
}

node 'web.lan' inherits base {
  include apache

  apache::vhost {"startside":
    source    => "/vagrant/manifests/sites/startPage.html",
    ipAddress => "*",
    port      => '8080',
  }
}

node default inherits base {
}
