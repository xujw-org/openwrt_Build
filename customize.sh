#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/10.1.1.2/g' openwrt/package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' openwrt/feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/OpenWrtKing/g' openwrt/package/base-files/files/bin/config_generate

#2. Custom settings
#sed -i 's?zstd$?zstd ucl upx\n$(curdir)/upx/compile := $(curdir)/ucl/compile?g' tools/Makefile
#sed -i 's/$(TARGET_DIR)) install/$(TARGET_DIR)) install --force-overwrite/' package/Makefile
#sed -i 's/root:.*/root:$1$tTPCBw1t$ldzfp37h5lSpO9VXk4uUE\/:18336:0:99999:7:::/g' package/base-files/files/etc/shadow

#去除默认密码
sed -i "/CYXluq4wUazHjmCDBCqXF/d" openwrt/package/lean/default-settings/files/zzz-default-settings

git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
# git clone  https://github.com/gdy666/luci-app-lucky.git package/lucky
# git clone  https://github.com/nikkinikki-org/OpenWrt-nikki.git package/nikki

# rm -rf openwrt/package/feeds/smpackage/luci-app-dogcom
# rm -rf openwrt/package/feeds/smpackage/natflow
