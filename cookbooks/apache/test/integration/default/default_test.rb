# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
#describe port(80), :skip do
#  it { should_not be_listening }
#end

#describe package('cowsay') do
#        it { should be_installed }
#end

describe port(80) do
        it { should be_listening }
end

describe package('apache2') do
        it { should be_installed }
end

describe file('/content/sites/chef1/index.html') do
        it { should exist }
end

describe file('/etc/apache2/sites-enabled/chef1.conf') do
        it { should exist }
end

