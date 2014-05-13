yum_package "stunnel" do
  action :install
end

template "/etc/systemd/system/stunnel.socket" do
  source "stunnel.socket.erb"
end

template "/etc/systemd/system/stunnel.service" do
  source "stunnel.service.erb"
end

template "/etc/stunnel/stunnel.conf" do
  source "stunnel.conf.erb"
end

template "/etc/stunnel/server.conf" do
  source "server.conf.erb"
end

template "/etc/stunnel/stunnel.pem" do
  source "stunnel.pem"
end
