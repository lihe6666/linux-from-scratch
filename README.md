# linux-from-scratch

1. 学习构建自定义Linux系统, 我会将我在实践中遇到的问题和解决办法和大家分享>
2. 实验场景搭建: vagrant + virtual box, 宿主为 ubuntu/focal64 20.04 LTS
3. Linux From Scratch Version 11.2 stable


[VirtualBox 7.0.4]("https://download.virtualbox.org/virtualbox/7.0.4/virtualbox-7.0_7.0.4-154605~Ubuntu~jammy_amd64.deb" "Package")

[Extension Pack]("https://download.virtualbox.org/virtualbox/7.0.4/Oracle_VM_VirtualBox_Extension_Pack-7.0.4.vbox-extpack" "Extension Pack")

系统必备的环境安装:
    
    # 根据结果判断
    $ sudo ln -sf /bin/bash /bin/sh
    $ sudo apt install build-essential bison g++ texinfo git vim gawk
    # 检测
    $ bash version-check.sh
    # 格式化磁盘
    sudo mkfs -v -t ext4 /dev/sd[x]
    # 默认路径
    export LFS=/mnt/lfs
    mkdir -pv $LFS
    # 挂载
    sudo mount /dev/<xxx> /mnt/lfs # xxx 磁盘标号
    # 下载文件 sources

## 4.1 构建临时环境，增加临时用户 001.sh
