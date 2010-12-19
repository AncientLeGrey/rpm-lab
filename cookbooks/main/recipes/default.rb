cookbook_file '/etc/yum.repos.d/my.repo' do
  source 'my.repo'
  mode 0644
  owner 'root'
  group 'root'
  action :create_if_missing
end

package 'rpmforge-release' do
  action :install
end

require_recipe 'rpmbuild'
#require_recipe 'jpackage'
#require_recipe 'java'
#require_recipe 'xtreemfs'

