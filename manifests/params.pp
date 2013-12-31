# == Class: newrelic_plugins::params
#
# Default parameters for all newrelic_plugins
#
# == Parameters:
#
#  None
#
# == Requires:
#
#  None
#
# == Sample Usage:
#
#   class { 'newrelic_plugins::params': }
#
class newrelic_plugins::params {

  $aws_cloudwatch_version = '3.2.0'
  $aws_cloudwatch_download_baseurl = 'https://github.com/newrelic-platform/newrelic_aws_cloudwatch_plugin/archive'

  # nokogiri dependencies
  if $::osfamily == 'Debian' {
    $aws_cloudwatch_nokogiri_packages = ['libxml2-dev', 'libxslt-dev']
  }
  else {
    $aws_cloudwatch_nokogiri_packages = ['libxml2', 'libxml2-devel', 'libxslt', 'libxslt-devel']
  }

  $f5_version = '1.0.7'

  $example_version = '1.0.1'
  $example_download_baseurl = 'https://github.com/newrelic-platform/newrelic_example_plugin/archive/release'

  $mysql_version = '1.1.0'
  $mysql_download_baseurl = 'https://raw.github.com/newrelic-platform/newrelic_mysql_java_plugin/master/dist/newrelic_mysql_plugin'
  $mysql_java_options = '-Xmx128m'

  $wikipedia_example_java_version = '1.0.8'
  $wikipedia_example_java_download_baseurl = 'https://github.com/newrelic-platform/newrelic_java_wikipedia_plugin/raw/master/dist/newrelic_wikipedia_plugin'

  $wikipedia_example_ruby_version = '1.0.3'
  $wikipedia_example_ruby_download_baseurl = 'https://github.com/newrelic-platform/newrelic_wikipedia_plugin/archive'
}

