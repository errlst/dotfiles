#!/bin/bash

# 定义模式和对应的中文显示
declare -A modes=(
  ["power-saver"]=" 省电"
  ["balanced"]=" 均衡"
  ["performance"]=" 性能"
)

toggle_mode() {
  # 获取当前模式
  current_mode=$(powerprofilesctl get | xargs)

  # 确定下一个模式
  case $current_mode in
  "power-saver") next_mode="balanced" ;;
  "balanced") next_mode="performance" ;;
  *) next_mode="power-saver" ;;
  esac

  # 设置新模式
  powerprofilesctl set "$next_mode"
}

display_mode() {
  current_mode=$(powerprofilesctl get | xargs)
  echo "{\"text\": \"${modes[$current_mode]}\", \"tooltip\": \"电池模式: ${modes[$current_mode]}\", \"class\": \"$current_mode\"}"
}

case "$1" in
--toggle)
  toggle_mode
  ;;
*)
  display_mode
  ;;
esac
