#!/bin/bash
#
# $USER: root
# 创建所需的目录布局 root:

if [ "root" != $USER ]; then 
  echo "请使用 root 用户"
  exit
fi

mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac

# 交叉编译器存放目录
mkdir -pv $LFS/tools
