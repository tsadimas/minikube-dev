#!/usr/bin/bash


sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
brew install derailed/k9s/k9s

echo "✅ kubectx, kubens, fzf, and k9s installed successfully"
sudo apt-get install fzf -y

source ~/.bashrc 
