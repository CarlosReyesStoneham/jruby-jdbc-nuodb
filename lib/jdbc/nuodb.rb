require 'java'

module Jdbc
  module NuoDB
    VERSION = '1.0.0'

    def self.driver_jar
      "nuodb-jdbc-#{VERSION.split('.')[0..2].join('.')}.jar"
    end

    def self.load_driver(method = :load)
      send method, driver_jar
    end

    def self.driver_name
      'com.nuodb.jdbc.Driver'
    end
  end
end

if $VERBOSE && (JRUBY_VERSION.nil? rescue true)
  warn 'Jdbc-NuoDB is only for use with JRuby'
end

unless Java::JavaLang::Boolean.get_boolean('arjdbc.skip.autoload')
  warn 'Autoloading driver which is now deprecated. Set arjdbc.skip.autoload=true to disable autoload.'
  Jdbc::NuoDB::load_driver :require
end