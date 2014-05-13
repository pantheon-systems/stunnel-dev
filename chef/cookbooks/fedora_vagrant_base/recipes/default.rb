yum_package "sendmail" do
  action :remove
end

yum_package "firewalld" do
  action :remove
end

yum_package "nano" do
  action :install
end

yum_package "telnet" do
  action :install
end

yum_package "nginx" do
  action :install
end

yum_package "systemd-devel" do
  action :install
end
