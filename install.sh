# for ubuntu 16 and python3
#! /bin

# install cmake
# install eigen 3.3.4 only: http://eigen.tuxfamily.org/index.php?title=News:Eigen_3.3.4_released!


# system
sudo apt install cmake
sudo apt-get install libglew1.6-dev libglewmx1.6-dev glew-utils libqt4-dev libsuitesparse-dev libsuitesparse-dev qtdeclarative5-dev qt5-qmake libqglviewer-dev

# unzip and install eigen
tar -xvjf eigen-eigen-5a0156e40feb.tar.bz2
cd eigen-eigen-5a0156e40feb
mkdir build
cd build
cmake ..
sudo make install 
cd ../..

# python3 part
sudo apt install python3-pip
sudo pip3 install PyOpenGL PyOpenGL_accelerate

# build g2opy
mkdir build
cd build
cmake ..
make -j8
cd ..
sudo python3 setup.py install
