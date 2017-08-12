node "cent-os-1.c.exalted-tempo-176004.internal" {
  $edge_dirs = [ 
                 '/landing1', 
                 '/landing1/ib', 
                 '/landing1/ib/b9t6', 
                 '/landing1/ib/b9t6/marker', 
                 '/landing1/ib/b9t6/metadata', 
               ]

  file { $edge_dirs:
    ensure => "directory",
    owner  => "root",
    group  => "root",
    mode   => "0750",
  }

}
