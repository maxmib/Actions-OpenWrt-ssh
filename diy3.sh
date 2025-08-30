#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git small https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
#sed -i '$a src-git small2 https://github.com/xiaorouji/openwrt-passwall2' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git immortalwrt https://github.com/immortalwrt/packages' feeds.conf.default


git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jerrykuku/luci-theme-argon.git  package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git  package/luci-app-argon-config
git clone https://github.com/honwen/luci-app-aliddns.git  package/luci-app-aliddns
#git clone https://github.com/ximiTech/luci-app-msd_lite.git  package/luci-app-msd_lite
#git clone https://github.com/maxmib/luci-app-msd.git package/luci-app-msd_lite
git clone https://github.com/maxmib/luci-app-msd-lite.git package/luci-app-msd_lite
#rm -rf package/lean/luci-theme-argon
