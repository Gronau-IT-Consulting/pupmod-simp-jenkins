[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html) [![Build Status](https://travis-ci.org/simp/pupmod-simp-jenkins.svg)](https://travis-ci.org/simp/pupmod-simp-jenkins) [![SIMP compatibility](https://img.shields.io/badge/SIMP%20compatibility-4.2.*%2F5.1.*-orange.svg)](https://img.shields.io/badge/SIMP%20compatibility-4.2.*%2F5.1.*-orange.svg)

## This is a SIMP module
This module is a component of the [System Integrity Management Platform](https://github.com/NationalSecurityAgency/SIMP), a compliance-management framework built on Puppet.

If you find any issues, they can be submitted to our [JIRA](https://simp-project.atlassian.net/).

Please read our [Contribution Guide](https://simp-project.atlassian.net/wiki/display/SD/Contributing+to+SIMP) and visit our [developer wiki](https://simp-project.atlassian.net/wiki/display/SD/SIMP+Development+Home).

## Work in Progress

Please excuse us as we transition this code into the public domain.

Downloads, discussion, and patches are still welcome!

## Note about Plugins

When using the default LDAP integration, the following plugins are required:

- [display-url-api](https://plugins.jenkins.io/display-url-api)
- [icon-shim](https://plugins.jenkins.io/icon-shim)
- [junit](https://plugins.jenkins.io/junit)
- [ldap](https://plugins.jenkins.io/ldap)
- [mailer](https://plugins.jenkins.io/mailer)
- [matrix-auth](https://plugins.jenkins.io/matrix-auth)
- [matrix-project](https://plugins.jenkins.io/matrix-project)
- [script-security](https://plugins.jenkins.io/script-security)
- [structs](https://plugins.jenkins.io/structs)

For the default jenkins::rsync\_plugins setting the .hpi files should be stored in /var/simp/environments/simp/rsync/Global/jenkins_plugins with uid/gid set to 419.
