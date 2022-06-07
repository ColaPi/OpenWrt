#!/bin/bash
# modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate

# add luci-theme-argon
cd openwrt/package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git

# add luci-app-kcptun
cd openwrt/package/lean
git clone https://github.com/kuoruan/luci-app-kcptun.git