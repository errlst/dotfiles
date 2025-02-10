#!/bin/sh

shortcuts=''
shortcuts=${shortcuts}'------------ Hyprland ------------\n'
shortcuts=${shortcuts}'win+enter        新建终端\n'
shortcuts=${shortcuts}'win+u            打开搜索菜单\n'
shortcuts=${shortcuts}'win+f            浮动窗口并居中\n'
shortcuts=${shortcuts}'win+m            退出 Hyprland\n'
shortcuts=${shortcuts}'win+q            关闭当前窗口\n'
shortcuts=${shortcuts}'win+p            截屏窗口\n'
shortcuts=${shortcuts}'win+hjkl         切换活动窗口\n'
shortcuts=${shortcuts}'win+shift+hjkl   调整窗口大小\n'
shortcuts=${shortcuts}'win+num          切换工作空间\n'
shortcuts=${shortcuts}'win+shift+num    移动活动窗口到工作空间\n'

# 输出JSON格式数据
echo "{\"text\":\" 快捷键\", \"tooltip\":\"$shortcuts\"}"
