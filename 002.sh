#!/bin/bash
#
# $USER: root
# 增加一个临时用户

if [ "root" != $USER ]; then
  echo "请使用 root 用户"
  exit
fi

groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs

# 授权用户完全访问权限
chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac

passwd lfs

su - lfs
