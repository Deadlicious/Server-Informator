sudo apt-get install -y tcpdump 
sudo apt-get install -y sysstat 
sudo apt-get install -y nginx 
sudo rm /etc/nginx/sites-available/default 
sudo cp ./default /etc/nginx/sites-available 
sudo apt-get install -y apache2 
sudo rm /etc/apache2/sites-available/000-default.conf 
sudo rm /etc/apache2/ports.conf 
sudo cp ./000-default.conf /etc/apache2/sites-available/ 
sudo cp ./ports.conf /etc/apache2 
sudo a2enmod cgi 
sudo cp ./MyTcpdumpScript /tmp/
(crontab -l && cat ./cronjobs) | crontab
sudo cp ./sysinfo /var/www/html/ 
sudo service apache2 start 
sudo service nginx start 
sudo service apache2 reload 
sudo service nginx reload
