# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jdbc/nuodb'

Gem::Specification.new do |spec|
  spec.name        = 'jdbc-nuodb'
  spec.version     = Jdbc::NuoDB::VERSION
  spec.authors     = ['Robert Buck']
  spec.email       = %w(rbuck@nuodb.com, support@nuodb.com)
  spec.description = %q{JRuby JDBC driver for the NuoDB distributed database.}
  spec.summary     = %q{JRuby JDBC driver for NuoDB.}
  spec.homepage    = 'http://nuodb.github.com/jruby-jdbc-nuodb/'
  spec.license     = 'BSD'

  spec.rdoc_options = %w(--charset=UTF-8)
  spec.extra_rdoc_files = %w[README.rdoc LICENSE]

  spec.files = `git ls-files`.split($\)
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency('rake', '~> 10.0.3')

  %w(rake).each { |gem| spec.add_development_dependency gem }
  %w(rspec rspec-core rspec-expectations rspec-mocks).each { |gem| spec.add_development_dependency gem, '~> 2.11.0' }
end
