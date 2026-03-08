#!/bin/bash
# 批量下载三国武将头像 - 使用Wikimedia Commons已知URL

cd ~/sanguo-hero/assets/characters/avatars

echo "=== 开始下载更多武将头像 ==="

# 创建一个函数来下载图片
download_image() {
  local url=$1
  local filename=$2
  if [ ! -f "$filename" ]; then
    curl -sL "$url" -o "$filename" --max-time 10
    if [ -s "$filename" ]; then
      local size=$(stat -f%z "$filename" 2>/dev/null || stat -c%s "$filename" 2>/dev/null)
      if [ "$size" -gt 1000 ]; then
        echo "✓ 已下载: $filename ($size bytes)"
      else
        rm -f "$filename"
        echo "✗ 失败: $filename (文件太小)"
      fi
    else
      rm -f "$filename"
      echo "✗ 失败: $filename"
    fi
  else
    echo "○ 已存在: $filename"
  fi
}

# 蜀国武将
echo ""
echo "【蜀国武将】"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Jiang_Wei_Qing_portrait.jpg/220px-Jiang_Wei_Qing_portrait.jpg" "jiangwei.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Pang_Tong_Qing_portrait.jpg/220px-Pang_Tong_Qing_portrait.jpg" "pangtong.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Fa_Zheng_Qing_portrait.jpg/220px-Fa_Zheng_Qing_portrait.jpg" "fazheng.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Xu_Shu_Qing_portrait.jpg/220px-Xu_Shu_Qing_portrait.jpg" "xushu.jpg"

# 魏国武将
echo ""
echo "【魏国武将】"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Guo_Jia_Qing_portrait.jpg/220px-Guo_Jia_Qing_portrait.jpg" "guojia.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Xun_Yu_Qing_portrait.jpg/220px-Xun_Yu_Qing_portrait.jpg" "xunyu.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Xun_You_Qing_portrait.jpg/220px-Xun_You_Qing_portrait.jpg" "xunyou.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Jia_Xu_Qing_portrait.jpg/220px-Jia_Xu_Qing_portrait.jpg" "jiaxu.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Cheng_Yu_Qing_portrait.jpg/220px-Cheng_Yu_Qing_portrait.jpg" "chengyu.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Cao_Ren_Qing_portrait.jpg/220px-Cao_Ren_Qing_portrait.jpg" "caoren.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Cao_Hong_Qing_portrait.jpg/220px-Cao_Hong_Qing_portrait.jpg" "caohong.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Cao_Zhen_Qing_portrait.jpg/220px-Cao_Zhen_Qing_portrait.jpg" "caozhen.jpg"

# 吴国武将
echo ""
echo "【吴国武将】"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Lu_Su_Qing_portrait.jpg/220px-Lu_Su_Qing_portrait.jpg" "lusu.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Lu_Meng_Qing_portrait.jpg/220px-Lu_Meng_Qing_portrait.jpg" "lvmeng.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Zhang_Zhao_Qing_portrait.jpg/220px-Zhang_Zhao_Qing_portrait.jpg" "zhangzhao.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Zhuge_Jin_Qing_portrait.jpg/220px-Zhuge_Jin_Qing_portrait.jpg" "zhugejin.jpg"

# 群雄武将
echo ""
echo "【群雄武将】"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Zhang_Jiao_Qing_portrait.jpg/220px-Zhang_Jiao_Qing_portrait.jpg" "zhangjiao.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Meng_Huo_Qing_portrait.jpg/220px-Meng_Huo_Qing_portrait.jpg" "menghuo.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Gongsun_Zan_Qing_portrait.jpg/220px-Gongsun_Zan_Qing_portrait.jpg" "gongsunzan.jpg"
download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Chen_Gong_Qing_portrait.jpg/220px-Chen_Gong_Qing_portrait.jpg" "chengong.jpg"

echo ""
echo "=== 下载统计 ==="
echo "当前共有头像文件: $(ls -1 *.jpg 2>/dev/null | wc -l) 个"
echo ""
ls -1 *.jpg 2>/dev/null | sort
