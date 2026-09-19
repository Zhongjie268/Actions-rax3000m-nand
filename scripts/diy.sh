#!/bin/bash

#更改默认地址为192.168.233.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
echo "src-git small https://github.com/kenzok8/small-package" >> ./feeds.conf.default

git clone https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/Openwrt-Passwall/openwrt-passwall2.git package/openwrt-passwall2
