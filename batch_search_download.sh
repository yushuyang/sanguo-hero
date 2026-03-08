#!/bin/bash
# 批量搜索并下载三国群英传素材

cd "$(dirname "$0")/assets"

# 创建一个临时目录存储下载的素材
mkdir -p temp_downloads
cd temp_downloads

echo "=== 批量下载游戏素材 ==="
echo ""

# 函数：尝试从多个源下载
download_with_fallback() {
    local output=$1
    shift
    for url in "$@"; do
        curl -sL "$url" -o "$output" --max-time 10 2>/dev/null
        if [ -s "$output" ]; then
            local size=$(stat -f%z "$output" 2>/dev/null || stat -c%s "$output" 2>/dev/null)
            if [ "$size" -gt 100 ]; then
                echo "✓ $output ($((${size}/1024))KB)"
                return 0
            fi
        fi
    done
    rm -f "$output"
    echo "✗ $output"
    return 1
}

# 1. 下载更多武将头像
echo "[1/5] 下载更多武将头像..."
mkdir -p avatars_new

# 蜀国剩余武将
download_with_fallback "avatars_new/jiangwan.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Jiang_Wan.jpg/220px-Jiang_Wan.jpg" &
download_with_fallback "avatars_new/feiyi.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Fei_Yi.jpg/220px-Fei_Yi.jpg" &
download_with_fallback "avatars_new/guanping.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Guan_Ping.jpg/220px-Guan_Ping.jpg" &
download_with_fallback "avatars_new/guanxing.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Guan_Xing.jpg/220px-Guan_Xing.jpg" &
download_with_fallback "avatars_new/zhangbao.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Zhang_Bao.jpg/220px-Zhang_Bao.jpg" &
download_with_fallback "avatars_new/madai.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Ma_Dai.jpg/220px-Ma_Dai.jpg" &
download_with_fallback "avatars_new/liyan.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Li_Yan.jpg/220px-Li_Yan.jpg" &
wait

# 魏国剩余武将
download_with_fallback "avatars_new/yujin.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Yu_Jin.jpg/220px-Yu_Jin.jpg" &
download_with_fallback "avatars_new/lidian.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Li_Dian.jpg/220px-Li_Dian.jpg" &
download_with_fallback "avatars_new/yuejin.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Yue_Jin.jpg/220px-Yue_Jin.jpg" &
download_with_fallback "avatars_new/caoxiu.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Cao_Xiu.jpg/220px-Cao_Xiu.jpg" &
download_with_fallback "avatars_new/zhonghui.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Zhong_Hui.jpg/220px-Zhong_Hui.jpg" &
download_with_fallback "avatars_new/dengai.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Deng_Ai.jpg/220px-Deng_Ai.jpg" &
wait

# 吴国剩余武将
download_with_fallback "avatars_new/chengpu.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Cheng_Pu.jpg/220px-Cheng_Pu.jpg" &
download_with_fallback "avatars_new/handang.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Han_Dang.jpg/220px-Han_Dang.jpg" &
download_with_fallback "avatars_new/jiangqin.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Jiang_Qin.jpg/220px-Jiang_Qin.jpg" &
download_with_fallback "avatars_new/zhoutai.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Zhou_Tai.jpg/220px-Zhou_Tai.jpg" &
download_with_fallback "avatars_new/dingfeng.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Ding_Feng.jpg/220px-Ding_Feng.jpg" &
download_with_fallback "avatars_new/xusheng.jpg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Xu_Sheng.jpg/220px-Xu_Sheng.jpg" &
wait

echo ""
echo "[2/5] 武将头像下载完成"
echo "新下载: $(ls avatars_new/*.jpg 2>/dev/null | wc -l) 个"

# 2. 下载中国地图底图
echo ""
echo "[3/5] 下载地图底图..."
mkdir -p maps_new

# 尝试下载东汉地图
curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Eastern_Han_Dynasty_Provinces.png/800px-Eastern_Han_Dynasty_Provinces.png" \
    -o "maps_new/han_map.png" --max-time 15 2>/dev/null

if [ -s "maps_new/han_map.png" ]; then
    size=$(stat -f%z "maps_new/han_map.png" 2>/dev/null || stat -c%s "maps_new/han_map.png" 2>/dev/null)
    echo "✓ 东汉地图 ($((${size}/1024))KB)"
else
    # 尝试备选URL
    curl -sL "https://raw.githubusercontent.com/historicalmaps/china/master/han_dynasty.png" \
        -o "maps_new/han_map.png" --max-time 15 2>/dev/null
    if [ -s "maps_new/han_map.png" ]; then
        echo "✓ 东汉地图 (备用源)"
    else
        echo "✗ 东汉地图"
    fi
fi

# 3. 使用ImageMagick生成简单的UI图标
echo ""
echo "[4/5] 生成基础UI图标..."
mkdir -p ui_new

# 检查是否有ImageMagick
if command -v convert &> /dev/null; then
    # 生成金币图标 (金色圆形)
    convert -size 32x32 xc:transparent \
        -fill '#FFD700' -draw 'circle 16,16 16,4' \
        -fill '#FFA500' -draw 'circle 16,16 16,2' \
        ui_new/gold.png 2>/dev/null && echo "✓ gold.png"
    
    # 生成粮食图标 (棕色麦穗简化)
    convert -size 32x32 xc:transparent \
        -fill '#8B4513' -draw 'rectangle 15,8 17,28' \
        -fill '#D2691E' -draw 'ellipse 16,8 4,6 0,360' \
        ui_new/food.png 2>/dev/null && echo "✓ food.png"
    
    # 生成士兵图标 (绿色人形)
    convert -size 32x32 xc:transparent \
        -fill '#228B22' -draw 'circle 16,10 16,6' \
        -fill '#228B22' -draw 'rectangle 12,14 20,28' \
        ui_new/soldier.png 2>/dev/null && echo "✓ soldier.png"
    
    # 生成血条背景
    convert -size 100x20 xc:transparent \
        -fill '#333' -draw 'roundrectangle 0,0 100,20 4,4' \
        ui_new/hp_bar_bg.png 2>/dev/null && echo "✓ hp_bar_bg.png"
    
    # 生成血条前景
    convert -size 100x20 xc:transparent \
        -fill '#c00' -draw 'roundrectangle 0,0 100,20 4,4' \
        ui_new/hp_bar.png 2>/dev/null && echo "✓ hp_bar.png"
    
    # 生成蓝条前景
    convert -size 100x20 xc:transparent \
        -fill '#00c' -draw 'roundrectangle 0,0 100,20 4,4' \
        ui_new/mp_bar.png 2>/dev/null && echo "✓ mp_bar.png"
else
    echo "ImageMagick未安装，跳过图标生成"
fi

# 4. 生成简单的技能图标
echo ""
echo "[5/5] 生成技能图标..."
mkdir -p skills_new

if command -v convert &> /dev/null; then
    # 火球术
    convert -size 32x32 xc:transparent \
        -fill '#FF4500' -draw 'circle 16,16 16,6' \
        -fill '#FFD700' -draw 'circle 16,16 16,3' \
        skills_new/fireball.png 2>/dev/null && echo "✓ fireball.png"
    
    # 治疗术
    convert -size 32x32 xc:transparent \
        -fill '#00FF7F' -draw 'roundrectangle 14,4 18,28 2,2' \
        -fill '#00FF7F' -draw 'roundrectangle 4,14 28,18 2,2' \
        skills_new/heal.png 2>/dev/null && echo "✓ heal.png"
    
    # 落石
    convert -size 32x32 xc:transparent \
        -fill '#808080' -draw 'polygon 16,4 28,20 4,20' \
        skills_new/rock.png 2>/dev/null && echo "✓ rock.png"
    
    # 弓箭
    convert -size 32x32 xc:transparent \
        -fill '#8B4513' -draw 'line 4,28 28,4' \
        -fill '#8B4513' -draw 'line 28,4 24,4' \
        -fill '#8B4513' -draw 'line 28,4 28,8' \
        skills_new/arrow.png 2>/dev/null && echo "✓ arrow.png"
    
    # 闪电
    convert -size 32x32 xc:transparent \
        -fill '#FFD700' -draw 'polygon 18,4 12,14 16,14 10,28 20,16 16,16' \
        skills_new/thunder.png 2>/dev/null && echo "✓ thunder.png"
fi

# 5. 统计结果
echo ""
echo "=== 批量下载完成 ==="
echo ""
echo "武将头像:"
ls avatars_new/*.jpg 2>/dev/null | wc -l | xargs echo "  新下载:"
ls ../characters/avatars/*.jpg 2>/dev/null | wc -l | xargs echo "  总计:"

echo ""
echo "地图素材:"
ls maps_new/*.* 2>/dev/null | wc -l | xargs echo "  数量:"

echo ""
echo "UI图标:"
ls ui_new/*.png 2>/dev/null | wc -l | xargs echo "  数量:"

echo ""
echo "技能图标:"
ls skills_new/*.png 2>/dev/null | wc -l | xargs echo "  数量:"

echo ""
echo "所有素材保存在: assets/temp_downloads/"
echo "请检查后将需要的素材移动到正式目录"
