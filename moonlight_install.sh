git clone https://github.com/irtimmer/moonlight-embedded.git
cd moonlight-embedded
git submodule update --init
wget https://raw.githubusercontent.com/cgutman/moonlight-embedded/surround_fix/libgamestream/client.c -O libgamestream/client.c
mkdir build
cd build/
cmake ../
make
sudo make install
sudo ldconfig
