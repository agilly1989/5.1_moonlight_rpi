sudo apt-get install build-essential libusb-1.0-0-dev
git clone https://github.com/medusalix/xow
cd xow
make BUILD=RELEASE
sudo make install
sudo systemctl enable xow
sudo systemctl start xow
