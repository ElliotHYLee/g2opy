from  hylee101001/pythons:python35
run apt update
run apt-get install cmake libglew1.6-dev libglewmx1.6-dev glew-utils libqt4-dev libsuitesparse-dev libsuitesparse-dev qtdeclarative5-dev qt5-qmake libqglviewer-dev -y

run mkdir g2opy
copy ./ /home/g2opy
workdir /home/g2opy

run tar -xvjf eigen-eigen-5a0156e40feb.tar.bz2
workdir /home/g2opy/eigen-eigen-5a0156e40feb
run mkdir build
workdir /home/g2opy/eigen-eigen-5a0156e40feb/build
run cmake ..
run make install

workdir /home/g2opy
run mkdir build
workdir /home/g2opy/build
run cmake ..
run make -j8
workdir /home/g2opy/
run python3 setup.py install
