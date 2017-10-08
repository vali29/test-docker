package 'httpd'
package 'tree'

file '/var/www/html/index.html' do
        content " <h1> This is test Website </h1> "
end

service 'httpd' do
        action [ :enable, :start ]

end

