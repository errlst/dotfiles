#!/bin/bash

# 获取当前工作区 ID
current_ws=$(hyprctl activeworkspace | grep 'workspace ID' | awk '{print $3}')

# 计算下一个工作区 ID
next_ws=$((current_ws + 1))

if [ $next_ws -gt 5 ]; then
  :
else
  # 如果存在且窗口数 >0，则切换
  hyprctl dispatch workspace "$next_ws"
fi
