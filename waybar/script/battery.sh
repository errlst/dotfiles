#!/bin/bash

# 电源模式配置
declare -A modes=(
  ["power-saver"]=" 省电"
  ["balanced"]=" 均衡"
  ["performance"]=" 性能"
)

# 电池图标配置（Nerd Font图标）
declare -A battery_icons=(
  ["0-20"]=""     # 空电量
  ["20-50"]=""    # 低电量
  ["50-80"]=""    # 中电量
  ["80-100"]=""   # 高电量
  ["charging"]="" # 充电中
  ["unknown"]=""  # 未知状态
)

declare -A bat_path="/sys/class/power_supply/BAT0"

# 获取电池信息
get_battery_info() {
  # 如果电池不存在则返回空
  [ ! -d "$bat_path" ] && echo "" && return

  local capacity=$(cat "$bat_path/capacity" 2>/dev/null || echo 0)
  local status=$(cat "$bat_path/status" 2>/dev/null || echo "Unknown")

  # 确定电量图标
  local icon=""
  case $status in
  "Charging") icon=${battery_icons["charging"]} ;;
  *)
    if ((capacity <= 20)); then
      icon=${battery_icons["0-20"]}
    elif ((capacity <= 50)); then
      icon=${battery_icons["20-50"]}
    elif ((capacity <= 80)); then
      icon=${battery_icons["50-80"]}
    else
      icon=${battery_icons["80-100"]}
    fi
    ;;
  esac

  echo "$icon $capacity%"
}

# 获取功耗
get_battery_power() {
  local power=$(cat "$bat_path/power_now" || echo 0)
  echo "scale=2; $power / 1000000" | bc
}

toggle_mode() {
  current_mode=$(powerprofilesctl get | xargs)
  case $current_mode in
  "power-saver") next_mode="balanced" ;;
  "balanced") next_mode="performance" ;;
  *) next_mode="power-saver" ;;
  esac
  powerprofilesctl set "$next_mode"
}

display_mode() {
  # 获取电源模式信息
  current_mode=$(powerprofilesctl get | xargs)

  # 获取电池信息
  bat_info=$(get_battery_info)

  bat_power=$(get_battery_power)

  # 组合输出
  echo "{\"text\": \"${modes[$current_mode]} | $bat_info | $bat_power\", \"tool_tips\": \"\", \"class\": \"$current_mode\"}"
}

case "$1" in
--toggle)
  toggle_mode
  ;;
*)
  display_mode
  ;;
esac
