#!/bin/bash

#更改默认地址为192.168.233.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

#修改wifi名称（mtwifi-cfg）
sed -i 's/ImmortalWrt-2.4G/666999/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/ImmortalWrt-5G/666999_/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh

# 修改wifi默认密码'password'（mtwifi-cfg）
sed -i 's/encryption=none/encryption=psk2/' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i "/encryption=psk2/a\\\t\t\t\t\tset wireless.default_\${dev}.key=huiyin268" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
