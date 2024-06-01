sudo apt update
sudo apt install nginx -y
sudo service enable nginx
sudo service nginx start
sudo echo '<h1> This is a Test Server </h1> | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app
sudo echo 