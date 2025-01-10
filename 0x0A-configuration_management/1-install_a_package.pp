exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin', '/usr/sbin'],
}

exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install werkzeug==2.1.1',
  path    => ['/usr/bin', '/usr/sbin'],
}

exec { 'verify_flask_install':
  command => '/usr/local/bin/flask --version',
  path    => ['/usr/bin', '/usr/sbin'],
  require => Exec['install_flask', 'install_werkzeug'],
}
