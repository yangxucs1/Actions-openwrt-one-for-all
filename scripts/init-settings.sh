#!/bin/bash

#更改默认地址为192.168.123.1
sed -i 's/192\.168\.[0-9]\{1,3\}\.[0-9]\{1,3\}/192.168.123.1/g' package/base-files/files/bin/config_generate

#更改root账户默认密码为空
sed -i 's/^root:.*/root::0:0:99999:7:::/' package/base-files/files/etc/shadow

# 给config下的文件增加权限
chmod 644 files/etc/config/*


echo "init-settings executed successfully!"
