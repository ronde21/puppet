echo "****************"
echo " "
echo "Hello $USER"
echo " "
echo "****************"
sudo timedatectl set-timezone Europe/Helsinki
setxkbmap fi
sudo apt-get update
sudo apt-get install -y puppet git tree

git clone https://github.com/ronde21/puppet.git

cd puppet/modules/
sudo cp -r ssh/ /etc/puppet/modules/
cd /etc/puppet/

sudo puppet apply --modulepath modules/ -e 'class {"ssh":}'

cd

echo "****************"
echo " "
echo "Ready to use"
echo " "
echo "****************"
