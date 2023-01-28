# OpenWrt

## Build OpenWrt from source by GitHub Action.

### Quick start
基于lede自定义固件：
```shell
docker run -it --rm ghcr.io/colapi/lede:latest bash
cd lede
rm -rf ./tmp && rm -rf .config
make menuconfig
./scripts/diffconfig.sh
```
将生成的差异config文件保存，然后再编译。

### Install the firmware

