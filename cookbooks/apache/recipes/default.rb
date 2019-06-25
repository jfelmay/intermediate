#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
packege 'httpd'

file '/var/www/html/index.html' do
	context '<h1>Welcome Home!</h1>'
end

Service 'httpd' do
	action [:enable, :start]
end	
