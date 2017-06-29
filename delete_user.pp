# deleting user


user { 'ashutosh':     
  ensure => absent, 
}

#output
'''
[root@demo-1 manifests]#  puppet apply  delete_user.pp
Notice: Compiled catalog for demo-1 in environment production in 0.15 seconds
Notice: /Stage[main]/Main/User[ashutosh]/ensure: removed
Notice: Finished catalog run in 0.10 seconds
'''
