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


  #$zones = [ 'tsz', 'edz' ]
  $epmcode = [ "b9t6", "bb5c" ]
 # $access = ["int", "pub", "con", "cpi"]

  #$zones.each |String $zone| {
    $zone = ['tsz'] 
    file {"/data/$zone":
      ensure => "directory",
      owner  => "root",
      group  => "root",
      mode   => "0750",
      target => "/data/$zone/b9t6/int",
    }
  #}

#  exec { 'hdfs commands':
#    command => 'hadoop fs -mkdir /data/tsz/b9t6/int',
#    path    => '/usr/local/bin/:/bin/',
#  }

#  notify {"hadoop fs -mkdir /data/tsz/b9t6/int":}
  
}
