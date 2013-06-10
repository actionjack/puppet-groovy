# == Class: groovy
#
# This module installs Groovy.
#
# === Parameters
#
# [*version*]
#   What version of Groovy to install.
#
# === Variables
#
#
# === Examples
#
#  class { groovy:
#    version => '2.1.4'
#  }
#
class groovy (
  $version = 'latest'
) {

  validate_re($version, 'present|installed|latest|^[._0-9a-zA-Z:-]+$')

  package { 'groovy':
      ensure => $version
  }
}
