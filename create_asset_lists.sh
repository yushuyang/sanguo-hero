#!/bin/bash
# 收集音效和音乐素材占位符

cd ~/sanguo-hero/assets/audio

echo "=== 创建音效和音乐素材清单 ==="

# 音效目录
mkdir -p effects/ui effects/battle effects/skill bgm

# 创建音效清单文件
cat > effects/README.txt << 'EOF'
# 音效素材清单

## UI音效 (effects/ui/)
- [ ] click.mp3 - 点击音效
- [ ] hover.mp3 - 悬停音效
- [ ] confirm.mp3 - 确认音效
- [ ] cancel.mp3 - 取消音效
- [ ] open.mp3 - 打开面板
- [ ] close.mp3 - 关闭面板
- [ ] victory.mp3 - 胜利音效
- [ ] defeat.mp3 - 失败音效

## 战斗音效 (effects/battle/)
- [ ] sword.mp3 - 刀剑攻击
- [ ] spear.mp3 - 长矛攻击
- [ ] arrow.mp3 - 弓箭射击
- [ ] damage.mp3 - 受伤音效
- [ ] death.mp3 - 死亡音效
- [ ] charge.mp3 - 冲锋音效
- [ ] march.mp3 - 行军音效

## 技能音效 (effects/skill/)
- [ ] fire.mp3 - 火系技能
- [ ] ice.mp3 - 冰系技能
- [ ] thunder.mp3 - 雷系技能
- [ ] heal.mp3 - 治疗技能
- [ ] summon.mp3 - 召唤技能

## 背景音乐 (bgm/)
- [ ] main_menu.mp3 - 主菜单音乐
- [ ] world_map.mp3 - 大地图音乐
- [ ] battle.mp3 - 战斗音乐
- [ ] city.mp3 - 城池音乐
- [ ] diplomacy.mp3 - 外交音乐

EOF

echo "✓ 创建音效清单"

# 创建占位符文件
touch effects/ui/.placeholder
touch effects/battle/.placeholder
touch effects/skill/.placeholder
touch bgm/.placeholder

echo "✓ 创建目录结构"

cd ~/sanguo-hero/assets/maps

# 创建地图素材清单
cat > README.txt << 'EOF'
# 地图素材清单

## 基础地图
- [ ] han_map.jpg - 东汉地图底图 (1920x1080或更大)
- [ ] china_outline.png - 中国轮廓线

## 地形瓦片 (tiles/)
- [ ] plain.jpg - 平原 (绿色)
- [ ] mountain.jpg - 山地 (棕色)
- [ ] water.jpg - 水城 (蓝色)
- [ ] desert.jpg - 沙漠 (黄色)
- [ ] forest.jpg - 森林 (深绿色)
- [ ] road.jpg - 道路

## 城池图标 (cities/)
- [ ] city_small.png - 小城
- [ ] city_medium.png - 中城
- [ ] city_large.png - 大城
- [ ] city_capital.png - 都城
- [ ] city_selected.png - 选中状态
- [ ] city_occupied.png - 占领状态

## 标记图标
- [ ] flag_shu.png - 蜀国旗
- [ ] flag_wei.png - 魏国旗
- [ ] flag_wu.png - 吴国旗
- [ ] flag_qun.png - 群雄旗

EOF

echo "✓ 创建地图素材清单"

cd ~/sanguo-hero/assets/ui

# 创建UI素材清单
cat > README.txt << 'EOF'
# UI素材清单

## 背景图片 (backgrounds/)
- [ ] main_bg.jpg - 主界面背景 (古风战场/宫殿)
- [ ] map_bg.jpg - 地图背景
- [ ] battle_bg.jpg - 战斗背景
- [ ] loading_bg.jpg - 加载背景

## 按钮样式 (buttons/)
- [ ] btn_normal.png - 普通按钮
- [ ] btn_hover.png - 悬停按钮
- [ ] btn_pressed.png - 按下按钮
- [ ] btn_disabled.png - 禁用按钮
- [ ] btn_close.png - 关闭按钮
- [ ] btn_menu.png - 菜单按钮

## 面板背景 (panels/)
- [ ] panel_basic.png - 基础面板
- [ ] panel_dialog.png - 对话框
- [ ] panel_tooltip.png - 提示框
- [ ] panel_frame.png - 边框

## 图标 (icons/)
- [x] gold.png - 金币
- [x] food.png - 粮食
- [x] soldier.png - 士兵
- [x] hp.png - 血条
- [x] mp.png - 蓝条/技力
- [x] city.png - 城池
- [x] flag.png - 旗帜
- [ ] attack.png - 攻击力
- [ ] defense.png - 防御力
- [ ] intelligence.png - 智力
- [ ] speed.png - 速度
- [ ] morale.png - 士气

## 字体
- [ ] chinese.ttf - 中文字体 (宋体/楷体)

EOF

echo "✓ 创建UI素材清单"

cd ~/sanguo-hero/assets/skills

# 创建技能图标清单
cat > README.txt << 'EOF'
# 技能图标清单

## 武将技图标 (32x32或64x64像素)

### 物理攻击类
- [x] rock.png - 落石
- [x] crossbow.png - 连弩
- [x] arrow.png - 飞矢
- [x] moonbow.png - 落月弓
- [x] sword.png - 刀剑乱
- [x] halfmoon.png - 半月斩
- [x] sunbow.png - 落日弓
- [x] halberd.png - 鬼戟

### 魔法/技能类
- [x] stone.png - 突石
- [x] spring.png - 地泉冲
- [x] wood.png - 木轮攻
- [x] dragon.png - 旋龙
- [x] fire.png - 八面火
- [x] cannon.png - 龙炮
- [x] buffalo.png - 火牛阵
- [x] firedragon.png - 炎龙
- [x] thunder.png - 狂雷天牢

### 辅助/治疗类
- [x] heal.png - 命疗术
- [x] soldiers.png - 伏兵组阵

### 特殊效果
- [x] firearrow.png - 火箭

EOF

echo "✓ 创建技能图标清单"

echo ""
echo "=== 完成 ==="
echo "已创建完整的素材清单和目录结构"
