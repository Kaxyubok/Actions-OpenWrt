#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

#生成差异化 seeds.config 文件（.config）
#https://github.com/coolsnowwolf/lede/issues/4954#issuecomment-678725739

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source

# passWall
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# OpenAppFilter
sed -i '$a src-git openappfilter https://github.com/destan19/OpenAppFilter.git' feeds.conf.default

# OpenClash
sed -i '$a src-git OpenClash https://github.com/vernesong/OpenClash.git' feeds.conf.default

# jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/feeds/luci-app-jd-dailybonus
#sed -i '$a src-git dailybonus https://github.com/jerrykuku/luci-app-jd-dailybonus.git' feeds.conf.default

# aliddns
git clone https://github.com/chenhw2/luci-app-aliddns.git package/feeds/luci-app-aliddns
#sed -i '$a src-git aliddns https://github.com/chenhw2/luci-app-aliddns.git' feeds.conf.default

# unblockneteasemusic
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/feeds/luci-app-unblockneteasemusic
#sed -i '$a src-git unblockneteasemusic https://github.com/project-openwrt/luci-app-unblockneteasemusic.git' feeds.conf.default

