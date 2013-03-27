require 'spec_helper'

describe Jdbc::NuoDB do
  before do
  end

  after do
  end

  context 'creating a connection' do

    before(:each) do
    end

    after(:each) do
    end

    it 'should raise an SQLException when provided a database that cannot be connected to' do
      lambda {
        url = 'jdbc:com.nuodb://noexist:48004/test?schema=test'
        java.sql.DriverManager.getConnection(url)
      }.should raise_error(Java::JavaSql::SQLException)
    end

    it 'should not raise an SQLException when provided a database that can be connected to' do
      lambda {
        con_props = java.util.Properties.new
        con_props.setProperty('user', 'cloud')
        con_props.setProperty('password', 'user')
        url = 'jdbc:com.nuodb://localhost:48004/test?schema=test'
        java.sql.DriverManager.getConnection(url, con_props)
      }.should_not raise_error(Java::JavaSql::SQLException)
    end
  end
end