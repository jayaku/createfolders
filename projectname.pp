node "cent-os-1.c.exalted-tempo-176004.internal" {

file { '/root/example_file.txt':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "700",
    content => "Congratulations!
Puppet has created this file.
",}

} # End node cent-os-1.c.exalted-tempo-176004.internale
