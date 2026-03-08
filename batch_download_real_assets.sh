#!/bin/bash
# 批量下载真实素材脚本

echo "=== 开始批量下载素材 ==="
cd "$(dirname "$0")"

# 1. 下载技能图标 (从opengameart.org等免费资源)
echo "[1/4] 下载技能图标..."
mkdir -p assets/skills/downloaded

# 使用curl下载开源游戏素材
# 火系技能图标
curl -sL "https://opengameart.org/sites/default/files/styles/medium/public/spell-icons-fire_0.png" \
  -o assets/skills/downloaded/fire_icon.png 2>/dev/null && echo "✓ fire_icon" || echo "✗ fire_icon"

# 2. 下载UI图标 (从kenney.nl等免费资源站)
echo "[2/4] 下载UI图标..."
mkdir -p assets/ui/icons/downloaded

# 金币图标
curl -sL "https://kenney.nl/content/3-assets/10-space-shooter-redux/PNG/UI/gold.png" \
  -o assets/ui/icons/downloaded/gold.png 2>/dev/null || \
curl -sL "https://opengameart.org/sites/default/files/coin_0.png" \
  -o assets/ui/icons/downloaded/gold.png 2>/dev/null && echo "✓ gold" || echo "✗ gold"

# 3. 下载地图瓦片
echo "[3/4] 下载地图素材..."
mkdir -p assets/maps/downloaded

# 地形瓦片
curl -sL "https://opengameart.org/sites/default/files/grass_tile.png" \
  -o assets/maps/downloaded/plain.png 2>/dev/null && echo "✓ plain" || echo "✗ plain"

curl -sL "https://opengameart.org/sites/default/files/mountain_tile.png" \
  -o assets/maps/downloaded/mountain.png 2>/dev/null && echo "✓ mountain" || echo "✗ mountain"

# 4. 验证下载结果
echo ""
echo "=== 下载结果统计 ==="
echo "技能图标:"
ls -lh assets/skills/downloaded/ 2>/dev/null | grep -v "^total" | wc -l | xargs echo "  数量:"

echo "UI图标:"
ls -lh assets/ui/icons/downloaded/ 2>/dev/null | grep -v "^total" | wc -l | xargs echo "  数量:"

echo "地图素材:"
ls -lh assets/maps/downloaded/ 2>/dev/null | grep -v "^total" | wc -l | xargs echo "  数量:"

echo ""
echo "=== 完成 ==="
