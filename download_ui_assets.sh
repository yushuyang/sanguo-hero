#!/bin/bash
# 收集UI素材和技能图标

cd ~/sanguo-hero/assets

echo "=== 收集UI素材和技能图标 ==="

# 函数：下载文件
download_file() {
  local url=$1
  local dest=$2
  if [ ! -f "$dest" ]; then
    curl -sL "$url" -o "$dest" --max-time 15
    if [ -s "$dest" ]; then
      local size=$(stat -f%z "$dest" 2>/dev/null || stat -c%s "$dest" 2>/dev/null)
      if [ "$size" -gt 500 ]; then
        echo "✓ 已下载: $dest ($size bytes)"
        return 0
      else
        rm -f "$dest"
        echo "✗ 文件太小: $dest"
        return 1
      fi
    else
      rm -f "$dest"
      echo "✗ 下载失败: $dest"
      return 1
    fi
  else
    echo "○ 已存在: $dest"
    return 0
  fi
}

# 创建占位符图标（使用ImageMagick生成）
create_placeholder() {
  local name=$1
  local text=$2
  local color=$3
  local output=$4
  
  if command -v convert &> /dev/null; then
    convert -size 64x64 xc:$color -pointsize 12 -fill white -gravity center -annotate +0+0 "$text" "$output" 2>/dev/null
    echo "✓ 创建: $output"
  fi
}

# 技能图标占位符
echo ""
echo "【技能图标】"
skills=(
  "luoshi:落石:rock.png"
  "mingliao:命疗术:heal.png"
  "liannu:连弩:crossbow.png"
  "tushi:突石:stone.png"
  "feishi:飞矢:arrow.png"
  "luoyue:落月弓:moonbow.png"
  "daojian:刀剑乱:sword.png"
  "diquan:地泉冲:spring.png"
  "huojian:火箭:firearrow.png"
  "mulun:木轮攻:wood.png"
  "banyue:半月斩:halfmoon.png"
  "xuanlong:旋龙:dragon.png"
  "luori:落日弓:sunbow.png"
  "bamian:八面火:fire.png"
  "guiji:鬼戟:halberd.png"
  "fubing:伏兵组阵:soldiers.png"
  "longpao:龙炮:cannon.png"
  "huoniu:火牛阵:buffalo.png"
  "yanlong:炎龙:firedragon.png"
  "kanglei:狂雷天牢:thunder.png"
)

for skill in "${skills[@]}"; do
  IFS=':' read -r id label filename <<< "$skill"
  if [ ! -f "skills/$filename" ]; then
    # 尝试创建简单的占位符
    touch "skills/$filename"
    echo "创建占位符: skills/$filename ($label)"
  fi
done

# UI图标占位符
echo ""
echo "【UI图标】"
ui_icons=(
  "gold.png:金币"
  "food.png:粮食"
  "soldier.png:士兵"
  "hp.png:血条"
  "mp.png:蓝条"
  "city.png:城池"
  "flag.png:旗帜"
)

for icon in "${ui_icons[@]}"; do
  IFS=':' read -r filename label <<< "$icon"
  if [ ! -f "ui/icons/$filename" ]; then
    touch "ui/icons/$filename"
    echo "创建占位符: ui/icons/$filename ($label)"
  fi
done

# 地图瓦片占位符
echo ""
echo "【地图瓦片】"
tiles=(
  "plain.png:平原"
  "mountain.png:山地"
  "water.png:水城"
  "desert.png:沙漠"
)

for tile in "${tiles[@]}"; do
  IFS=':' read -r filename label <<< "$tile"
  if [ ! -f "maps/tiles/$filename" ]; then
    touch "maps/tiles/$filename"
    echo "创建占位符: maps/tiles/$filename ($label)"
  fi
done

# 城池状态图标
echo ""
echo "【城池图标】"
cities=(
  "city_normal.png:城池-正常"
  "city_selected.png:城池-选中"
  "city_occupied.png:城池-占领"
)

for city in "${cities[@]}"; do
  IFS=':' read -r filename label <<< "$city"
  if [ ! -f "maps/cities/$filename" ]; then
    touch "maps/cities/$filename"
    echo "创建占位符: maps/cities/$filename ($label)"
  fi
done

echo ""
echo "=== 目录结构 ==="
find . -type f -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" | sort

echo ""
echo "=== 统计 ==="
echo "技能图标: $(ls -1 skills/ 2>/dev/null | wc -l) 个"
echo "UI图标: $(ls -1 ui/icons/ 2>/dev/null | wc -l) 个"
echo "地图瓦片: $(ls -1 maps/tiles/ 2>/dev/null | wc -l) 个"
echo "城池图标: $(ls -1 maps/cities/ 2>/dev/null | wc -l) 个"
