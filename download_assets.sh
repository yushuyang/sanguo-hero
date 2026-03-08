#!/bin/bash
# 素材下载辅助脚本

echo "================================"
echo "三国群英传2 - 素材下载助手"
echo "================================"
echo ""

cd "$(dirname "$0")/assets"

# 创建目录
mkdir -p characters/avatars characters/portraits maps/tiles maps/cities ui/buttons ui/panel skills music/bgm music/se

echo "目录结构已创建"
echo ""
echo "武将头像下载指南:"
echo "-------------------"
echo "1. 从以下网站搜索'三国群英传2 头像':"
echo "   - 百度图片: https://image.baidu.com"
echo "   - 必应图片: https://www.bing.com/images"
echo "   - 谷歌图片: https://www.google.com/images"
echo ""
echo "2. 推荐搜索关键词:"
echo "   - '三国群英传2 武将头像'"
echo "   - '三国群英传2 游戏素材'"
echo "   - '三国志 像素头像'"
echo ""
echo "3. 下载后将图片放入对应目录:"
echo "   - 头像: assets/characters/avatars/"
echo "   - 立绘: assets/characters/portraits/"
echo "   - 地图: assets/maps/"
echo ""
echo "4. 命名规范:"
echo "   - 头像: {武将拼音}.png (如: liubei.png)"
echo "   - 尺寸: 64x64 或 128x128"
echo ""
echo "当前素材目录结构:"
find . -type d | sort
