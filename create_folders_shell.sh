How to create group ?
How to create users ?
How to associate users to group ?
How to change owners of the folders ?

su
jayaku@instance-1:~/projects$ sudo passwd
Enter new UNIX password: <type the root password - see JKPass>
Retype new UNIX password: <type the root password - see JKPass>
passwd: password updated successfully

groupadd edld_bbbf_etl
groupadd edld_b3kf_sftp

cat /etc/group 
#checks whether these entries are added

    jayaku:x:1001:
    edld_bbbf_etl:x:1002:
    edld_b3kf_sftp:x:1003:

useradd dev_bbbf_etl_appid -g 1002
#Here 1002 is the gid of the 

root@instance-1:/home# useradd dev_bbbf_etl_appid -g 1002
root@instance-1:/home# id dev_bbbf_etl_appid
uid=1001(dev_bbbf_etl_appid) gid=1002(edld_bbbf_etl) groups=1002(edld_bbbf_etl)
root@instance-1:/home# useradd edl_dev_bb5c_sftp -g 1003
root@instance-1:/home# id edl_dev_bb5c_sftp 
uid=1002(edl_dev_bb5c_sftp) gid=1003(edld_b3kf_sftp) groups=1003(edld_b3kf_sftp
root@instance-1:/# mkdir landing1
root@instance-1:/# mkdir landing1/ib
root@instance-1:/# mkdir landing1/ib/b9t6

root@instance-1:/landing1/ib# chown edl_dev_bb5c_sftp:edld_bbbf_etl b9t6
root@instance-1:/landing1/ib# ls -ltr
drwxr-xr-x 2 edl_dev_bb5c_sftp edld_bbbf_etl 4096 Aug  7 17:15 b9t6

root@instance-1:/home/jayaku# cd /
root@instance-1:/# ls
bin   dev  home        initrd.img.old  lib64       media  opt   root  sbin  sys  usr  vmlinuz
boot  etc  initrd.img  lib             lost+found  mnt    proc  run   srv   tmp  var  vmlinuz.old
root@instance-1:/# mkdir landing1
root@instance-1:/# mkdir landing1/ib
root@instance-1:/# mkdir landing1/ib/b9t6
root@instance-1:/# cd landing1/ib
root@instance-1:/landing1/ib# ls
b9t6
root@instance-1:/landing1/ib# ls -ltr
total 4
drwxr-xr-x 2 root root 4096 Aug  7 17:15 b9t6
root@instance-1:/landing1/ib# chown edl_dev_bb5c_sftp:edld_bbbf_etl b9t6
root@instance-1:/landing1/ib# ls -ltr
total 4
drwxr-xr-x 2 edl_dev_bb5c_sftp edld_bbbf_etl 4096 Aug  7 17:15 b9t6
root@instance-1:/landing1/ib# su edl_dev_bb5c_sftp 
$ id
uid=1002(edl_dev_bb5c_sftp) gid=1003(edld_b3kf_sftp) groups=1003(edld_b3kf_sftp)
$ cd /landing1/ib
$ ls
b9t6
$ cd *
$ ls
$ touch abc.txt
root@instance-1:/landing1/ib/b9t6# su dev_bbbf_etl_appid
$ ls -ltr
total 0
-rw-r--r-- 1 edl_dev_bb5c_sftp edld_b3kf_sftp 0 Aug  7 17:17 abc.txt
$ chmod 775 abc.txt
$ ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_b3kf_sftp 0 Aug  7 17:17 abc.txt
$ exit
root@instance-1:/landing1/ib# su dev_bbbf_etl_appid
$ cd /landing1/ib
$ ls
b9t6
$ cd *
$ ls -altr
total 8
drwxr-xr-x 3 root              root           4096 Aug  7 17:15 ..
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_b3kf_sftp    0 Aug  7 17:17 abc.txt
drwxr-xr-x 2 edl_dev_bb5c_sftp edld_bbbf_etl  4096 Aug  7 17:17 .
$ id dev_bbbf_etl_appid
uid=1001(dev_bbbf_etl_appid) gid=1002(edld_bbbf_etl) groups=1002(edld_bbbf_etl)
$ rm abc.txt
rm: remove write-protected regular empty file 'abc.txt'? n
$ rm -f abc.txt
rm: cannot remove 'abc.txt': Permission denied
$ ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_b3kf_sftp 0 Aug  7 17:17 abc.txt
$ exit      
root@instance-1:/landing1/ib# cd b9t6/
root@instance-1:/landing1/ib/b9t6# ls
abc.txt
root@instance-1:/landing1/ib/b9t6# ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_b3kf_sftp 0 Aug  7 17:17 abc.txt
root@instance-1:/landing1/ib/b9t6# set -o vi
root@instance-1:/landing1/ib/b9t6# 
root@instance-1:/landing1/ib/b9t6# chown edl_dev_bb5c_sftp:edld_bbbf_etl *.txt
root@instance-1:/landing1/ib/b9t6# ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_bbbf_etl 0 Aug  7 17:17 abc.txt
root@instance-1:/landing1/ib/b9t6# su dev_bbbf_etl_appid
$ ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_bbbf_etl 0 Aug  7 17:17 abc.txt
$ rm abc.txt          
rm: cannot remove 'abc.txt': Permission denied
$ ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_bbbf_etl 0 Aug  7 17:17 abc.txt
$ cd ..
$ ls
b9t6
$ ls -ltr
total 4
drwxr-xr-x 2 edl_dev_bb5c_sftp edld_bbbf_etl 4096 Aug  7 17:17 b9t6
$ exit
root@instance-1:/landing1/ib/b9t6# pwd
/landing1/ib/b9t6
root@instance-1:/landing1/ib/b9t6# cd ..
root@instance-1:/landing1/ib# ls -ltr
total 4
drwxr-xr-x 2 edl_dev_bb5c_sftp edld_bbbf_etl 4096 Aug  7 17:17 b9t6
root@instance-1:/landing1/ib# chmod 775 b9t6
root@instance-1:/landing1/ib# ls -ltr
total 4
drwxrwxr-x 2 edl_dev_bb5c_sftp edld_bbbf_etl 4096 Aug  7 17:17 b9t6
root@instance-1:/landing1/ib# cd b9t6/
root@instance-1:/landing1/ib/b9t6# ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_bbbf_etl 0 Aug  7 17:17 abc.txt
root@instance-1:/landing1/ib/b9t6# su dev_bbbf_etl_appid
$ ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_bbbf_etl 0 Aug  7 17:17 abc.txt
$ rm abc.txt
$ id
uid=1001(dev_bbbf_etl_appid) gid=1002(edld_bbbf_etl) groups=1002(edld_bbbf_etl)
$ ls -ltr
total 0
$ id
uid=1001(dev_bbbf_etl_appid) gid=1002(edld_bbbf_etl) groups=1002(edld_bbbf_etl)
$ exit
root@instance-1:/landing1/ib/b9t6# set -o vi
root@instance-1:/landing1/ib/b9t6# 
root@instance-1:/landing1/ib/b9t6# su edl_dev_bb5c_sftp 
$ pwd
/landing1/ib/b9t6
$ touch def.txt
$ ls -ltr
total 0
-rw-r--r-- 1 edl_dev_bb5c_sftp edld_b3kf_sftp 0 Aug  7 17:23 def.txt
$ chmod 775 def.txt
$ ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_b3kf_sftp 0 Aug  7 17:23 def.txt
$ exit
root@instance-1:/landing1/ib/b9t6# 
root@instance-1:/landing1/ib/b9t6# 
root@instance-1:/landing1/ib/b9t6# su dev_bbbf_etl_appid
$ ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_b3kf_sftp 0 Aug  7 17:23 def.txt
$ ls -ltr
total 0
-rwxrwxr-x 1 edl_dev_bb5c_sftp edld_b3kf_sftp 0 Aug  7 17:23 def.txt
$ id
uid=1001(dev_bbbf_etl_appid) gid=1002(edld_bbbf_etl) groups=1002(edld_bbbf_etl)
$ rm def.txt
rm: remove write-protected regular empty file 'def.txt'? y
$ ls -ltr
total 0
$ exit
root@instance-1:/landing1/ib/b9t6# 


