class base {
  user { 'bekk':
    ensure => present,
    gid    => '501',
  }

  group { 'bekk':
    ensure => present,
  }

  file { '/home/bekk':
    ensure => directory,
    owner  => 'bekk',
    group  => 'bekk',
    mode   => '0744',
  }

  file { '/home/bekk/.bashrc':
    ensure  => present,
    content => 'echo "hei Bekk"',
  }

}
