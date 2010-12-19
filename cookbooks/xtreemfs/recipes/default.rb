remote_file "/etc/yum.repos.d/home:xtreemfs.repo" do
  source "http://download.opensuse.org/repositories/home:/xtreemfs/CentOS_5/home:xtreemfs.repo"
  mode "644"
end

package "xtreemfs-server" do
  action :install
end

package "xtreemfs-client" do
  action :install
end

service "xtreemfs-dir" do
  action [ :enable, :start ]
end

service "xtreemfs-mrc" do
  action [ :enable, :start ]
end

service "xtreemfs-osd" do
  action [ :enable, :start ]
end

execute "mkfs.xtreemfs" do
  command "mkfs.xtreemfs localhost/cloud"
  action :run
end