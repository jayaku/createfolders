node "cent-os-1.c.exalted-tempo-176004.internal" {

  $path_parents = all_parents($path)

  file { $path_parents:
    ensure => "directory",
    owner  => "root",
    group  => "root",
    mode   => "0750",
  }

  $epmcodes = ['b9t6', 'bb5c']

  $epmcodes.each |String $epmcode | {
    file { "/landing1/ib/${epmcode}/metadata"'":
      ensure => "directory",
      owner  => "root",
      group  => "root",
      mode   => "0750",
      require => File[ $path_parents ],
    }
  }
}


