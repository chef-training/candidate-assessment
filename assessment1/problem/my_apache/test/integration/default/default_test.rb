# InSpec test for recipe my_apache::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

['openjdk-11-jdk', 'apache2'].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe service('apache2') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/var/www/html/index.html') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'Hello world!' }
  its('content') { should match 'Authored by Jane Doe' }
end

describe file('/etc/apt/sources.list.d/openjdk-r-ppa.list') do
  it { should exist }
  it { should be_file }
end

describe command('curl http://localhost') do
  its('stdout') { should match 'Hello world!' }
  its('stdout') { should match 'Authored by Jane Doe' }
end

