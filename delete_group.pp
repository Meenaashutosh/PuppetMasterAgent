#deleting group

group { 'user_ashutosh':         
  ensure => absent,      
}

#output
'''
[root@demo-1 manifests]# puppet apply  delete_group.pp
Notice: Compiled catalog for demo-1 in environment production in 0.12 seconds
Notice: /Stage[main]/Main/Group[user_ashutosh]/ensure: removed
Notice: Finished catalog run in 0.04 seconds
'''
