#
# Cookbook:: security
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file "/etc/chem/validation.pem" do
	action :delete
end
