package 'git' do
  action :install
end

package 'rubygem-rake' do
  action :install
end

gem_package 'net-ssh' do
  action :install
end

gem_package 'net-sftp' do
  action :install
end

git '~vagrant/cantiere' do
  repository 'git://github.com/stormgrind/cantiere.git'
  reference 'HEAD'
  group 'vagrant'
  user 'vagrant'
  action :sync
  ignore_failure true
end

link "~vagrant/rpmbuild/Rakefile" do
  to "/vagrant/rpmbuild/Rakefile"
end

execute "set_rights" do
  command "chown -R vagrant.vagrant ~vagrant/rpmbuild"
  action :run
end