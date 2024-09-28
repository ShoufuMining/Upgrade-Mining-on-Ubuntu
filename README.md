ubuntu一键挖矿更新脚本
项目简介
本项目旨在为 Ubuntu 用户提供一键安装 NVIDIA 驱动和 CUDA 工具包的脚本，以便于快速配置挖矿环境。该脚本自动化了安装过程，简化了配置步骤，使用户能够快速启动挖矿。

功能
自动添加软件源并更新系统。
安装必要的依赖库和开发工具。
安装最新的 NVIDIA 驱动程序。
下载并安装 CUDA 工具包。
使用说明
环境要求
Ubuntu 22.04
需要以 root 用户身份运行脚本。

安装步骤:
手动安装下载脚本
curl -O https://gh-proxy.com/https://raw.githubusercontent.com/ShoufuMining/One-Click-Mining-Script-for-Ubuntu/main/One-Click-Mining-Script-for-Ubuntu.sh

给予执行权限
chmod +x One-Click-Mining-Script-for-Ubuntu.sh

运行脚本
sudo ./One-Click-Mining-Script-for-Ubuntu.sh

自动一键安装命令：wget -qO- https://gh-proxy.com/https://raw.githubusercontent.com/ShoufuMining/Upgrade-Mining-on-Ubuntu/main/One-Click-Mining-Script-for-Ubuntu.sh | bash

