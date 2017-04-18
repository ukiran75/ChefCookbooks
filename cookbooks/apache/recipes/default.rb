#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package "httpd" do
	action :install
end

node["apache"]["sites"].each do |siteName, data|
	document_root = "/content/sites/#{siteName}"
	
	directory document_root do
		mode "0755"
		recursive true
	end
	template "/etc/httpd/conf.d/#{siteName}.conf" do
		source vhost.erb
		mode "0644"
	end
end

service "httpd" do
	action [:enable,:start]
end
