#creating user with using script

user { 'ashutosh':        
  ensure      => present,       
  uid         => '500',       
  home        => '/home/ashutosh',        
  managehome  => true,    
}

#output
'''
[root@demo-1 manifests]# puppet apply create_user.pp
Notice: Compiled catalog for demo-1 in environment production in 0.14 seconds
Notice: /Stage[main]/Main/User[ashutosh]/ensure: created
Notice: Finished catalog run in 0.16 seconds
'''
