echo "添加Kubernetes安装源认证key:"
sudo curl -sSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add

echo "添加Kubernetes安装源："
sudo echo deb http://apt.kubernetes.io/ kubernetes-xenial main > /etc/apt/sources.list.d/kubernetes.list

echo "更新系统软件包列表："
sudo apt update

echo "查看Kubernetes的可用版本："
apt-cache madison kubeadm

echo "安装kubeadm 1.11.0: "
apt-get install -y kubeadm=1.11.0-00 kubectl=1.11.0-00 kubelet=1.11.0-00
