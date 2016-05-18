package 'apache2'

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end

file '/var/www/html/index.html' do
	content '<html>
  <body>
    <p>Automation for the People</p>
</html>'
end
