node "cent-os-1.c.exalted-tempo-176004.internal" {
   $path = '/landing1/ib/b9t6/metadata'

   $path_parents = all_parents($path)

    file { $path_parents:
      ensure => "directory",
      owner  => "root",
      group  => "root",
      mode   => "0750",
    }

    file { $path:
      ensure => "directory",
      owner  => "root",
      group  => "root",
      mode   => "0750",
      require => File[ $path_parents ],
    }
}


