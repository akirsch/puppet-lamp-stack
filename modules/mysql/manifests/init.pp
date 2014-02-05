class mysql {
  # root mysql password
  $mysqlpw = "d3v0p5"
  # database name
  $mysqldb = "db01"

  # install mysql server
  package { "mysql-server":
    ensure => present,
    require => Exec["apt-get update"]
  }

  #start mysql service
  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }

  # set mysql password
  exec { "set-mysql-password":
    unless => "mysqladmin -uroot -p$mysqlpw status",
    command => "mysqladmin -uroot password $mysqlpw",
    require => Service["mysql"],
  }

  exec { "create-database":
    unless  => "mysql -uroot -p$mysqlpw $mysqldb",
    command => "mysql -uroot -p$mysqlpw -e \"CREATE DATABASE $mysqldb CHARACTER SET utf8 COLLATE utf8_general_ci;\"",
    require => Exec["set-mysql-password"],
  }
}
