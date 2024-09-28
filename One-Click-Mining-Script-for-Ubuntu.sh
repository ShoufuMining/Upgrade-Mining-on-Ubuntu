#!/bin/bash 

# 如果不是 root 用户，则退出
if [ "$EUID" -ne 0 ]; then
  echo "请以 root 身份运行"
  exit
fi

# 添加软件源并更新
echo "deb http://cz.archive.ubuntu.com/ubuntu jammy main" >> /etc/apt/sources.list
apt update

# 安装必要的依赖
DEBIAN_FRONTEND=noninteractive apt install libc6 -y
apt install -y g++-11

# 添加 NVIDIA PPA
echo "正在添加 NVIDIA PPA..."
add-apt-repository ppa:graphics-drivers/ppa -y

# 更新软件源以获取 NVIDIA 驱动
apt update

# 安装 NVIDIA 驱动
echo "正在安装 NVIDIA 驱动..."
ubuntu-drivers autoinstall

# 下载和安装 CUDA keyring
echo "正在下载 CUDA keyring..."
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
dpkg -i cuda-keyring_1.1-1_all.deb

# 更新 APT 并安装 CUDA 工具包
echo "正在安装 CUDA 工具包..."
apt-get update
apt-get -y install cuda-toolkit-12-6

echo "NVIDIA 驱动和 CUDA 工具包安装成功。"
