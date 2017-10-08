package 'httpd'
package 'tree'

file '/var/www/html/index.html' do
        content " <h1> This is test Website </h1> "
end

service 'httpd' do
        action [ :enable, :start ]

end

file '/etc/motd' do
        content  " Property of Mastan \n

        IPADDRESS: #{node['ipaddress']}
        HOSTNAME: #{node['hostname']}
        INMEMORY: #{node['memory'] ['total']}
        CPU: #{node['cpu'] ['0'] ['mhz']}
        \n "

        mode '0644'
        owner 'root'
        group 'root'
end

