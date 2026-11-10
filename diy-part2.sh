#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP取消注释后，会把路由器默认管理 IP 从 192.168.1.1 改为 192.168.50.5
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify default theme取消注释后，把默认 LuCI 主题从 bootstrap 换成更美观的 argon。注意：需确保 argon 主题已在 feeds 中（可能还需在 .config 中选中）。
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname修改主机名
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
