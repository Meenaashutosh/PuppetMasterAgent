#creating group

group { 'user_ashutosh':    
  ensure => present,     
  gid => 501,  
}


#output
'''
[root@demo-1 manifests]# puppet apply creat_group.pp  
Notice: Compiled catalog for demo-1 in environment production in 0.12 seconds
Notice: /Stage[main]/Main/Group[user_ashutosh]/ensure: created
Notice: Finished catalog run in 0.09 seconds
'''
