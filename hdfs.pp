exec { 'hadoop-get-scoop':
  path => '/usr/bin:/bin:/usr/sbin:/sbin',

  command => 'hadoop fs -copyToLocal s3://xx-xx-xxxx/scripts/sqoop-1.4.3-hadoop200.jar /path/to/sqoop-1.4.3-hadoop200.jar',
  creates => '/path/to/sqoop-1.4.3-hadoop200.jar'
}

