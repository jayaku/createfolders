node "cent-os-1.c.exalted-tempo-176004.internal" {

  $epmcodes = ['b9t6', 'bb5c']
  $path_parents = all_parents($epmcodes)

  file { $path_parents:
    ensure => "directory",
    owner  => "root",
    group  => "root",
    mode   => "0750",
  }


  $epmcodes.each |String $epmcode | {
    file { "/landing1/ib/${epmcode}/metadata":
      ensure => "directory",
      owner  => "root",
      group  => "root",
      mode   => "0750",
      require => File[ $path_parents ],
    }
  }
}


