package 'jbossas' do
  version '4.2.3'
  options '-x eclipse-ecj'
  action :install
end

service "jbossas" do
  action [ :enable, :start ]
end
