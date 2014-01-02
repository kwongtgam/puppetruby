class rvm {

  package { 'curl':
    ensure => installed,
  }

  exec { 'install_rvm':
    path     => ["/usr/bin", "/usr/sbin", "/usr/local/bin", "/bin", "/sbin"],
    command  => "\curl -L https://get.rvm.io | bash -s stable --ruby; touch /opt/rvminstalled",
    creates  => "/opt/rvminstalled",
    requires => Package['curl'],
  }
}