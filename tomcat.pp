
# Installation of java and tomcat(standalone)
'''
class { 'java':
  package => 'java-1.8.0-openjdk-devel',
}
'''
tomcat::install { '/opt/tomcat':
  source_url => 'https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M1/bin/apache-tomcat-9.0.0.M21.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}

#output
...
[root@demo-1 ~]# puppet apply /etc/puppet/manifests/tomcat.pp
Warning: Config file /etc/puppet/hiera.yaml not found, using Hiera defaults
Notice: Compiled catalog for demo-1 in environment production in 1.31 seconds
Notice: /Stage[main]/Main/Tomcat::Install[/opt/tomcat]/Tomcat::Install::Source[/opt/tomcat]/
Staging::File[apache-tomcat-9.0.0.M1.tar.gz]/Exec[/opt/staging/tomcat/apache-tomcat-9.0.0.M1.tar.gz]/
returns: executed successfully
Notice: /File[/opt/staging/tomcat/apache-tomcat-9.0.0.M1.tar.gz]/seluser: seluser changed 'unconfined_u' to 'system_u'Notice: 
/Stage[main]/Main/Tomcat::Install[/opt/tomcat]/Tomcat::Install::Source[/opt/tomcat]/Staging::Extract
[/opt/tomcat-apache-tomcat-9.0.0.M1.tar.gz]/Exec[extract /opt/tomcat-apache-tomcat-9.0.0.M1.tar.gz]/returns:
executed successfully
Notice: /Stage[main]/Main/Tomcat::Instance[default]/Tomcat::Service[default]/Service[tomcat-default]/ensure: 
ensure changed 'stopped' to 'running'Notice: 
Finished catalog run in 1.96 seconds
[root@demo-1 ~]# cd /opt/tomcat
[root@demo-1 tomcat]# ls
bin  conf  lib  LICENSE  logs  NOTICE  RELEASE-NOTES  RUNNING.txt  temp  webapps  work
'''
