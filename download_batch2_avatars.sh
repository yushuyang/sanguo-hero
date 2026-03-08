#!/bin/bash
# 继续收集更多武将头像 - 第二批

cd ~/sanguo-hero/assets/characters/avatars

echo "=== 收集第二批武将头像 ==="

download_image() {
  local url=$1
  local filename=$2
  if [ ! -f "$filename" ]; then
    curl -sL "$url" -o "$filename" --max-time 10
    if [ -s "$filename" ]; then
      local size=$(stat -f%z "$filename" 2>/dev/null || stat -c%s "$filename" 2>/dev/null)
      if [ "$size" -gt 1000 ]; then
        echo "✓ 已下载: $filename ($size bytes)"
        return 0
      else
        rm -f "$filename"
        return 1
      fi
    else
      rm -f "$filename"
      return 1
    fi
  fi
  return 1
}

# 蜀国 - 继续收集
echo ""
echo "【蜀国第二批】"

# 关平 - 关羽之子
if [ ! -f guanping.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Guan_Ping_Qing_portrait.jpg/220px-Guan_Ping_Qing_portrait.jpg" "guanping.jpg"
fi

# 关兴 - 关羽之子  
if [ ! -f guanxing.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Guan_Xing_Qing_portrait.jpg/220px-Guan_Xing_Qing_portrait.jpg" "guanxing.jpg"
fi

# 张苞 - 张飞之子
if [ ! -f zhangbao.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Zhang_Bao_Qing_portrait.jpg/220px-Zhang_Bao_Qing_portrait.jpg" "zhangbao.jpg"
fi

# 马岱
if [ ! -f madai.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Ma_Dai_Qing_portrait.jpg/220px-Ma_Dai_Qing_portrait.jpg" "madai.jpg"
fi

# 李严
if [ ! -f liyan.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Li_Yan_Qing_portrait.jpg/220px-Li_Yan_Qing_portrait.jpg" "liyan.jpg"
fi

# 魏国 - 继续收集
echo ""
echo "【魏国第二批】"

# 于禁
if [ ! -f yujin.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Yu_Jin_Qing_portrait.jpg/220px-Yu_Jin_Qing_portrait.jpg" "yujin.jpg"
fi

# 李典
if [ ! -f lidiang.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Li_Dian_Qing_portrait.jpg/220px-Li_Dian_Qing_portrait.jpg" "lidiang.jpg"
fi

# 乐进
if [ ! -f lejin.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Le_Jin_Qing_portrait.jpg/220px-Le_Jin_Qing_portrait.jpg" "lejin.jpg"
fi

# 曹休
if [ ! -f caoxiu.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Cao_Xiu_Qing_portrait.jpg/220px-Cao_Xiu_Qing_portrait.jpg" "caoxiu.jpg"
fi

# 钟会
if [ ! -f zhonghui.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Zhong_Hui_Qing_portrait.jpg/220px-Zhong_Hui_Qing_portrait.jpg" "zhonghui.jpg"
fi

# 邓艾
if [ ! -f dengai.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Deng_Ai_Qing_portrait.jpg/220px-Deng_Ai_Qing_portrait.jpg" "dengai.jpg"
fi

# 吴国 - 继续收集
echo ""
echo "【吴国第二批】"

# 周泰
if [ ! -f zhoutai.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Zhou_Tai_Qing_portrait.jpg/220px-Zhou_Tai_Qing_portrait.jpg" "zhoutai.jpg"
fi

# 丁奉
if [ ! -f dingfeng.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Ding_Feng_Qing_portrait.jpg/220px-Ding_Feng_Qing_portrait.jpg" "dingfeng.jpg"
fi

# 群雄 - 继续收集
echo ""
echo "【群雄第二批】"

# 高顺
if [ ! -f gaoshun.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Gao_Shun_Qing_portrait.jpg/220px-Gao_Shun_Qing_portrait.jpg" "gaoshun.jpg"
fi

# 田丰
if [ ! -f tianfeng.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Tian_Feng_Qing_portrait.jpg/220px-Tian_Feng_Qing_portrait.jpg" "tianfeng.jpg"
fi

# 沮授
if [ ! -f jushou.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Ju_Shou_Qing_portrait.jpg/220px-Ju_Shou_Qing_portrait.jpg" "jushou.jpg"
fi

# 许攸
if [ ! -f xunyou_2.jpg ]; then
  download_image "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Xu_You_Qing_portrait.jpg/220px-Xu_You_Qing_portrait.jpg" "xunyou_2.jpg"
fi

echo ""
echo "=== 当前统计 ==="
echo "头像总数: $(ls -1 *.jpg 2>/dev/null | wc -l) 个"
