# fix the jpackage-utils issue
# https://bugzilla.redhat.com/show_bug.cgi?id=497213
# http://plone.lucidsolutions.co.nz/linux/centos/jpackage-jpackage-utils-compatibility-for-centos-5.x

# src: http://plone.lucidsolutions.co.nz/linux/centos/images/jpackage-utils-compat-el5-0.0.1-1.noarch.rpm
package "jpackage-utils-compat-el5" do
  action :install
end

# src: http://mirrors.dotsrc.org/jpackage/5.0/generic/free/RPMS/jpackage-release-5-4.jpp5.noarch.rpm
package 'jpackage-release' do
  action :install
end

package "jpackage-utils" do
  action :install
end
