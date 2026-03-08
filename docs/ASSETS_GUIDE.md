# 素材收集指南

## 已收集素材清单

### 武将头像 (33个)
已保存在 `assets/characters/avatars/` 目录

#### 蜀国 (7个)
- 刘备 (liubei.jpg)
- 关羽 (guanyu.jpg)
- 张飞 (zhangfei.jpg)
- 赵云 (zhaoyun.jpg)
- 马超 (machao.jpg)
- 黄忠 (huangzhong.jpg)
- 诸葛亮 (zhugeliang.jpg)

#### 魏国 (9个)
- 曹操 (caocao.jpg)
- 司马懿 (simayi.jpg)
- 夏侯惇 (xiahoudun.jpg)
- 夏侯渊 (xiahouyuan.jpg)
- 张辽 (zhangliao.jpg)
- 许褚 (xuchu.jpg)
- 典韦 (dianwei.jpg)
- 徐晃 (xuhuang.jpg)
- 张郃 (zhanghe.jpg)

#### 吴国 (7个)
- 孙权 (sunquan.jpg)
- 孙策 (sunce.jpg)
- 周瑜 (zhouyu.jpg)
- 陆逊 (luxun.jpg)
- 太史慈 (taishici.jpg)
- 甘宁 (ganning.jpg)
- 黄盖 (huanggai.jpg)

#### 群雄 (10个)
- 吕布 (lubu.jpg)
- 董卓 (dongzhuo.jpg)
- 袁绍 (yuanshao.jpg)
- 袁术 (yuanshu.jpg)
- 刘表 (liubiao.jpg)
- 马腾 (mateng.jpg)
- 华雄 (huaxiong.jpg)
- 颜良 (yanliang.jpg)
- 文丑 (wenchou.jpg)
- 庞德 (pangde.jpg)

## 图片来源
所有头像均来自 **Wikimedia Commons** (维基共享资源)
- 唐代画家绘制的三国人物画像
- 公有领域 (Public Domain) 或 CC 协议
- 历史真实画像，非游戏原创

## 继续收集更多头像

### 方法一：使用脚本批量下载

```bash
cd ~/sanguo-hero/assets/characters/avatars

# 下载更多武将头像
curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/.../xxx.jpg" -o name.jpg
```

### 方法二：手动下载

1. 访问 Wikimedia Commons 搜索武将英文名
   - 网址: https://commons.wikimedia.org
   - 搜索: "Zhang Fei Tang Dynasty Portrait"

2. 找到合适的图片后，复制图片链接

3. 使用 curl 下载:
```bash
curl -sL "图片URL" -o 武将拼音.jpg
```

### 方法三：使用搜索引擎

1. 百度图片搜索: "唐代 三国人物 画像"
2. 谷歌图片搜索: "Three Kingdoms Tang Dynasty Portrait"
3. 注意版权问题，优先使用公有领域图片

## 待收集武将名单

### 蜀国
- [ ] 魏延
- [ ] 姜维
- [ ] 法正
- [ ] 庞统
- [ ] 徐庶
- [ ] 蒋琬
- [ ] 费祎
- [ ] 董允
- [ ] 关平
- [ ] 关兴
- [ ] 张苞
- [ ] 马岱
- [ ] 李严
- [ ] 刘巴
- [ ] 黄月英 (女)

### 魏国
- [ ] 郭嘉
- [ ] 荀彧
- [ ] 荀攸
- [ ] 贾诩
- [ ] 程昱
- [ ] 于禁
- [ ] 李典
- [ ] 乐进
- [ ] 曹仁
- [ ] 曹洪
- [ ] 曹真
- [ ] 曹休
- [ ] 夏侯霸
- [ ] 钟会
- [ ] 邓艾
- [ ] 王双

### 吴国
- [ ] 张昭
- [ ] 鲁肃
- [ ] 吕蒙
- [ ] 程普
- [ ] 韩当
- [ ] 蒋钦
- [ ] 周泰
- [ ] 丁奉
- [ ] 徐盛
- [ ] 潘璋
- [ ] 全琮
- [ ] 诸葛瑾
- [ ] 顾雍
- [ ] 大乔 (女)
- [ ] 小乔 (女)

### 群雄
- [ ] 貂蝉 (女)
- [ ] 蔡文姬 (女)
- [ ] 张角
- [ ] 张宝
- [ ] 张梁
- [ ] 孟获
- [ ] 祝融夫人 (女)
- [ ] 公孙瓒
- [ ] 公孙渊
- [ ] 张鲁
- [ ] 韩遂
- [ ] 高顺
- [ ] 陈宫
- [ ] 田丰
- [ ] 沮授
- [ ] 许攸
- [ ] 逢纪
- [ ] 郭图
- [ ] 审配
- [ ] 辛评

## 地图素材

### 需要的素材
1. **东汉地图底图** - 显示全国疆域
2. **城池图标** - 3种状态: 正常/选中/占领
3. **道路线** - 连接各城池
4. **地形标识** - 平原/山地/水城/沙漠

### 获取方式
1. 搜索 "东汉地图" 或 "三国地图"
2. 历史地图网站 (如: 哈佛世界地图)
3. 古籍扫描件 (如: 三国演义插图)

## 技能图标

### 需要的图标 (20个)
1. 落石
2. 命疗术
3. 连弩
4. 突石
5. 飞矢
6. 落月弓
7. 刀剑乱
8. 地泉冲
9. 火箭
10. 木轮攻
11. 半月斩
12. 旋龙
13. 落日弓
14. 八面火
15. 鬼戟
16. 伏兵组阵
17. 龙炮
18. 火牛阵
19. 炎龙
20. 狂雷天牢

### 制作建议
- 尺寸: 32x32 或 64x64 像素
- 风格: 古风/像素风
- 工具: Photoshop, GIMP, Aseprite

## UI素材

### 需要的素材
1. 主界面背景图 (古风战场/城池)
2. 按钮样式 (正常/悬停/点击)
3. 面板背景 (半透明白色/棕色纹理)
4. 血条/蓝条 (红色/蓝色渐变)
5. 字体 (宋体/楷体等古风字体)
6. 小图标 (金币/粮食/士兵等)

### 获取方式
1. 免费素材网站:
   - itch.io (游戏素材)
   - OpenGameArt
   - Kenney.nl
2. 购买素材包:
   - Unity Asset Store
   - Unreal Marketplace
3. 自行绘制

## 音效音乐

### 需要的音效
- 点击音效
- 战斗音效
- 技能音效
- 胜利/失败音效

### 需要的音乐
- 主菜单音乐 (古风)
- 地图背景音乐
- 战斗音乐 (激昂)
- 内政音乐 (舒缓)

### 获取方式
1. 免费音效网站:
   - freesound.org
   - 耳聆网
2. 购买音乐包
3. 原创音乐

## 版权注意事项

1. **公有领域 (Public Domain)** - 可自由使用
2. **CC0** - 可自由使用
3. **CC-BY** - 需要署名
4. **商业素材** - 需要购买授权
5. **游戏截图** - 可能有版权风险

建议使用 **Wikimedia Commons** 和 **公有领域** 资源，避免版权问题。

## 快速开始

运行以下命令查看当前素材:
```bash
cd ~/sanguo-hero
./download_assets.sh
```

或查看已收集的武将头像:
```bash
ls -la assets/characters/avatars/
```
