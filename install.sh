# for ubuntu 16 and python3
#! /bin
sudo apt-get install libglew1.6-dev libglewmx1.6-dev glew-utils libqt4-dev libsuitesparse-dev

sudo pip3 install PyOpenGL PyOpenGL_accelerate

mkdir build
cd build
cmake ..
make -j16
cd ..
sudo python3 setup.py install
