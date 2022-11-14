sudo apt update
sudo apt upgrade -y
sudo apt install -y default-mysql-server
sudo mysql -u root <<EOF
     alter user "root"@"localhost" identified by "1234";
     flush privileges;
EOF