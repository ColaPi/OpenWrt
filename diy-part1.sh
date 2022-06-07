#!/bin/bash
# modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate

# add luci-theme-argon
rm -rf ./package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/

# add luci-app-kcptun
git clone https://github.com/kuoruan/luci-app-kcptun.git ./package/lean/