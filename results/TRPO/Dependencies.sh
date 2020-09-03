curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get update
sudo apt-get upgrade
sudo usermod -aG docker your-user

docker run -t -i ubuntu:18.04
apt-get update
apt install -y git build-essential python-pip cmake libz-dev swig
pip install --upgrade pip
pip install -q 'tensorflow==0.12.0rc0' numpy 'gym==0.5.0' prettytensor scipy easydict progressbar python-gflags cached_property
git clone https://github.com/roosephu/needle.git
git checkout 06892caecaef85ecd79494d4dccb62abdea7672e
# test it runs
python needle/main.py --mode train --agent TRPO --batch_size 10 --iterations 10000 --env DuplicatedInput-v0
# Make docker image
exit
docker commit $(docker ps -n 1 --format "{{.ID}}") needle
