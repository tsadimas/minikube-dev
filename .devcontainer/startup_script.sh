#!/usr/bin/bash
echo "✅ Kubectl and Helm installed successfully"

sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
brew install derailed/k9s/k9s

echo "✅ kubectx, kubens, fzf, and k9s installed successfully"
sudo apt-get install fzf -y

alias k="kubectl" >> /home/$USER/.bashrc
alias kga="kubectl get all" >> /home/$USER/.bashrc
alias kgn="kubectl get all --all-namespaces" >> /home/$USER/.bashrc
alias kdel="kubectl delete" >> /home/$USER/.bashrc
alias kd="kubectl describe" >> /home/$USER/.bashrc
alias kg="kubectl get" >> /home/$USER/.bashrc

echo 'alias k="kubectl"' >> /home/$USER/.bashrc
echo 'alias kga="kubectl get all"' >> /home/$USER/.bashrc
echo 'alias kgn="kubectl get all --all-namespaces"' >> /home/$USER/.bashrc
echo 'alias kdel="kubectl delete"' >> /home/$USER/.bashrc
echo 'alias kd="kubectl describe"' >> /home/$USER/.bashrc
echo 'alias kg="kubectl get"' >> /home/$USER/.bashrc

echo "✅ The following aliases were added:"
echo "alias k=kubectl" >> /home/$USER/.bashrc
echo "alias kga=kubectl get all" >> /home/$USER/.bashrc
echo "alias kgn=kubectl get all --all-namespaces" >> /home/$USER/.bashrc
echo "alias kdel=kubectl delete" >> /home/$USER/.bashrc
echo "alias kd=kubectl describe" >> /home/$USER/.bashrc
echo "alias kg=kubectl get" >> /home/$USER/.bashrc

source ~/.bashrc 