apt-get update
apt-get install -y \
  curl \
  w3m \
  vim \
  nmap \
  ngrep \
  tmux \
  apt-transport-https \
  ca-certificates \
  python-software-properties # \
#  linux-image-extra-$(uname -r) \
#  linux-image-extra-virtual
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce
