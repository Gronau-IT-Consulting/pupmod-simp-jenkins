# Manage the installation of jenkins
#
# @param java_package
#   Name of the java package to install
#
# @param enable_external_yumrepo
#   Set this to true to point to the public yum repo for Jenkins.
#
class jenkins::install (
  String $java_package             = simplib::lookup('jenkins::java_package', { 'default_value' => 'java-1.8.0-openjdk' }),
  Boolean $enable_external_yumrepo = simplib::lookup('jenkins::enable_external_yumrepo', { 'default_value' => false })
){

  group { 'jenkins':
    ensure    => 'present',
    allowdupe => false,
    gid       => '419'
  }

  user { 'jenkins':
    ensure     => 'present',
    allowdupe  => false,
    comment    => 'Jenkins',
    gid        => '419',
    uid        => '419',
    membership => 'inclusive',
    shell      => '/sbin/nologin',
    home       => '/var/lib/jenkins',
    before     => Package['jenkins'],
    require    => Group['jenkins']
  }

  $_jenkins_enabled = $enable_external_yumrepo ? {
    true  => 1,
    false => 0
  }
  yumrepo { 'jenkins':
    baseurl         => 'http://pkg.jenkins-ci.org/redhat/',
    descr           => 'Jenkins Repository',
    enabled         => $_jenkins_enabled,
    gpgcheck        => 1,
    gpgkey          => 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key',
    keepalive       => 0,
    metadata_expire => '3600',
    before          => Package['jenkins']
  }

  package { $java_package:
    ensure => 'latest'
  }

  package { 'jenkins':
    ensure  => 'latest',
    require => Package[$java_package]
  }

}
