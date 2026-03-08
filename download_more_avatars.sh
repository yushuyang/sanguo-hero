#!/bin/bash
# 下载更多三国武将头像
# 从Wikimedia Commons获取唐代画像

cd ~/sanguo-hero/assets/characters/avatars

# 蜀国武将 - 唐代画像URL（来自Wikimedia Commons公有领域）
echo "=== 下载蜀国武将头像 ==="

# 魏延 - 魏延像
if [ ! -f weiyan.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Wei_Yan_Qing_portrait.jpg/220px-Wei_Yan_Qing_portrait.jpg" -o weiyan.jpg
  echo "下载: 魏延"
fi

# 庞统 - 庞统像
if [ ! -f pangtong.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Pang_Tong_Qing_portrait.jpg/220px-Pang_Tong_Qing_portrait.jpg" -o pangtong.jpg
  echo "下载: 庞统"
fi

# 姜维 - 姜维像
if [ ! -f jiangwei.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Jiang_Wei_Qing_portrait.jpg/220px-Jiang_Wei_Qing_portrait.jpg" -o jiangwei.jpg
  echo "下载: 姜维"
fi

# 法正
if [ ! -f fazheng.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Fa_Zheng_Qing_portrait.jpg/220px-Fa_Zheng_Qing_portrait.jpg" -o fazheng.jpg 2>/dev/null || echo "跳过: 法正"
fi

# 徐庶
if [ ! -f xushu.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Xu_Shu_Qing_portrait.jpg/220px-Xu_Shu_Qing_portrait.jpg" -o xushu.jpg 2>/dev/null || echo "跳过: 徐庶"
fi

echo "=== 蜀国武将下载完成 ==="

# 魏国武将
echo "=== 下载魏国武将头像 ==="

# 郭嘉
if [ ! -f guojia.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Guo_Jia_Qing_portrait.jpg/220px-Guo_Jia_Qing_portrait.jpg" -o guojia.jpg 2>/dev/null || echo "跳过: 郭嘉"
fi

# 荀彧
if [ ! -f xunyu.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Xun_Yu_Qing_portrait.jpg/220px-Xun_Yu_Qing_portrait.jpg" -o xunyu.jpg 2>/dev/null || echo "跳过: 荀彧"
fi

# 荀攸
if [ ! -f xunyou.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Xun_You_Qing_portrait.jpg/220px-Xun_You_Qing_portrait.jpg" -o xunyou.jpg 2>/dev/null || echo "跳过: 荀攸"
fi

# 贾诩
if [ ! -f jiaxu.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Jia_Xu_Qing_portrait.jpg/220px-Jia_Xu_Qing_portrait.jpg" -o jiaxu.jpg 2>/dev/null || echo "跳过: 贾诩"
fi

# 程昱
if [ ! -f chengyu.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Cheng_Yu_Qing_portrait.jpg/220px-Cheng_Yu_Qing_portrait.jpg" -o chengyu.jpg 2>/dev/null || echo "跳过: 程昱"
fi

# 曹仁
if [ ! -f caoren.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Cao_Ren_Qing_portrait.jpg/220px-Cao_Ren_Qing_portrait.jpg" -o caoren.jpg 2>/dev/null || echo "跳过: 曹仁"
fi

# 曹洪
if [ ! -f caohong.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Cao_Hong_Qing_portrait.jpg/220px-Cao_Hong_Qing_portrait.jpg" -o caohong.jpg 2>/dev/null || echo "跳过: 曹洪"
fi

# 曹真
if [ ! -f caozhen.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Cao_Zhen_Qing_portrait.jpg/220px-Cao_Zhen_Qing_portrait.jpg" -o caozhen.jpg 2>/dev/null || echo "跳过: 曹真"
fi

echo "=== 魏国武将下载完成 ==="

# 吴国武将
echo "=== 下载吴国武将头像 ==="

# 鲁肃
if [ ! -f lusu.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Lu_Su_Qing_portrait.jpg/220px-Lu_Su_Qing_portrait.jpg" -o lusu.jpg 2>/dev/null || echo "跳过: 鲁肃"
fi

# 吕蒙
if [ ! -f lvmeng.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Lu_Meng_Qing_portrait.jpg/220px-Lu_Meng_Qing_portrait.jpg" -o lvmeng.jpg 2>/dev/null || echo "跳过: 吕蒙"
fi

# 张昭
if [ ! -f zhangzhao.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Zhang_Zhao_Qing_portrait.jpg/220px-Zhang_Zhao_Qing_portrait.jpg" -o zhangzhao.jpg 2>/dev/null || echo "跳过: 张昭"
fi

# 诸葛瑾
if [ ! -f zhugejin.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Zhuge_Jin_Qing_portrait.jpg/220px-Zhuge_Jin_Qing_portrait.jpg" -o zhugejin.jpg 2>/dev/null || echo "跳过: 诸葛瑾"
fi

echo "=== 吴国武将下载完成 ==="

# 群雄武将
echo "=== 下载群雄武将头像 ==="

# 张角
if [ ! -f zhangjiao.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Zhang_Jiao_Qing_portrait.jpg/220px-Zhang_Jiao_Qing_portrait.jpg" -o zhangjiao.jpg 2>/dev/null || echo "跳过: 张角"
fi

# 孟获
if [ ! -f menghuo.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Meng_Huo_Qing_portrait.jpg/220px-Meng_Huo_Qing_portrait.jpg" -o menghuo.jpg 2>/dev/null || echo "跳过: 孟获"
fi

# 公孙瓒
if [ ! -f gongsunzan.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Gongsun_Zan_Qing_portrait.jpg/220px-Gongsun_Zan_Qing_portrait.jpg" -o gongsunzan.jpg 2>/dev/null || echo "跳过: 公孙瓒"
fi

# 陈宫
if [ ! -f chengong.jpg ]; then
  curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Chen_Gong_Qing_portrait.jpg/220px-Chen_Gong_Qing_portrait.jpg" -o chengong.jpg 2>/dev/null || echo "跳过: 陈宫"
fi

echo "=== 群雄武将下载完成 ==="

echo ""
echo "=== 下载完成 ==="
ls -la *.jpg | wc -l
echo "个头像文件"
