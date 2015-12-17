

template "/etc/httpd/conf.d/basicsite.conf" do
  owner "root"
  group "root"
  mode "644"
  source "basicsite.erb"
end
