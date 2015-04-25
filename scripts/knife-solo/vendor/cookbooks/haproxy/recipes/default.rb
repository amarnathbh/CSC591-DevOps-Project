package 'haproxy'

template "/etc/default/haproxy" do
  source "haproxy.erb"
  owner "root"
  group "root"
end

template "/etc/haproxy/haproxy.cfg" do
  source "haproxy.cfg.erb"
  owner "root"
  group "root"
  notifies :reload, 'service[haproxy]'
end

service "haproxy" do
  supports status: true, restart: true, reload: true
  action [ :enable, :start ]
end