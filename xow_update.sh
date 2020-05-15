cd xow
sudo systemctl stop xow
sudo systemctl disable xow
sudo make uninstall
git pull
make BUILD=RELEASE
sudo make install
sudo systemctl enable xow
sudo systemctl start xow
