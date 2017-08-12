node "cent-os-1.c.exalted-tempo-176004.internal" {

  $zones = ['tsz', 'edz']

  $zones.each |String $zone| { 
    notice("Hello $zone")
  }
}
