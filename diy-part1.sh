#!/bin/bash
# modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate

# add openclash
wget https://github.com/vernesong/OpenClash/archive/refs/heads/master.zip -P /tmp
unzip /tmp/master.zip
cp -r OpenClash-master/luci-app-openclash package/lean/
rm -rf /tmp/master.zip OpenClash-master

# add luci-theme-argon
# rm -rf ./package/lean/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon