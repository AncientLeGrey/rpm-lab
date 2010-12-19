require_recipe 'cantiere'

package "yum-utils" do
  action :install
end

package "rpm-build" do
  action :install
end

package "redhat-rpm-config" do
  action :install
end

package "createrepo" do
  action :install
end

