sudo -i
# Installing Jekyll and it's dependencies
apt-get update
apt-get install -y build-essential python-pygments curl git libfontconfig libxslt1-dev libxml2-dev libssl-dev

# # Installing Node and it's dependencies
apt-get install -y python-software-properties python g++ make
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
apt-get update
apt-get install -y nodejs
npm install -g gulp-cli

# Installing Yo
# npm install -g yo
chown -R vagrant:vagrant /usr/lib/node_modules
