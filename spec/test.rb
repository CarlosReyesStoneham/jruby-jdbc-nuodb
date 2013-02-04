require 'rubygems'
require 'jdbc/nuodb'
require 'java'

com.nuodb
com.nuodb.jdbc
driver = com.nuodb.jdbc.Driver.new

puts "enumerating..."
java.sql.DriverManager.getDrivers.each{ |e| puts e }

url = "jdbc:com.nuodb://localhost:48004:test?schema=test"
connection = java.sql.DriverManager.getConnection url