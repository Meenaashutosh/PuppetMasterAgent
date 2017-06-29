#Git_Clone configuration

#git_install.pp
'''
include git
git::config{'user.name':
  value     => 'Meenaashutosh' 
}

git::config{'user.email':
  value     => 'ashutoshmeena111@gmial.com'
}
'''
 #clone.pp
vcsrepo { '/opt/puppet-docs': 
  ensure   => present, 
  provider => git,  
  source   => 'https://github.com/Meenaashutosh/PuppetMasterAgent.git',
}


#output
'''
[root@demo-1 manifests]# puppet apply  git_install.pp
Warning: Config file /etc/puppet/hiera.yaml not found, using Hiera defaults
Notice: Compiled catalog for demo-1 in environment production in 0.15 seconds
Notice: Finished catalog run in 2.02 seconds[root@demo-1 manifests]# puppet apply clone.pp
Notice: Compiled catalog for demo-1 in environment production in 0.25 seconds
Notice: Finished catalog run in 0.14 seconds
'''

