sudo apt-get update
sudo apt install -y git build-essential xvfb ffmpeg python3-pip cmake libz-dev swig
pip3 install --upgrade pip
pip3 install --user garage

pip3 install -q 'tensorflow==1.15.3'
pip3 install -q 'gym==0.10.11'
pip3 install -q 'imageio==2.4.0'
pip3 install -q PILLOW
pip3 install -q 'pyglet==1.3.2'
pip3 install -q pyvirtualdisplay
pip3 install -q tf-agents
pip3 install -q matplotlib


curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get update
sudo apt-get upgrade
sudo usermod -aG docker your-user


git clone https://github.com/rlworkgroup/garage.git
cd garage/benchmark
pip3 install -e .
