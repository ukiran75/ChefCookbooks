#
# Cookbook:: MOTD
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#template "/etc/motd" do
#	source "motd.erb"
#	mode "0644"
#end

host_name = node['hostname']

file '/etc/motd' do
	content "Hostname is this : #{host_name}"
end
