#!/bin/sh

shortcuts=''
shortcuts=${shortcuts}'------------ Hyprland ------------\n'
shortcuts=${shortcuts}' + T            新建终端\n'
shortcuts=${shortcuts}' + ENTER        雷神终端\n'
shortcuts=${shortcuts}' + U            打开搜索菜单\n'
shortcuts=${shortcuts}' + F            浮动窗口并居中\n'
shortcuts=${shortcuts}' + M            退出 Hyprland\n'
shortcuts=${shortcuts}' + Q            关闭当前窗口\n'
shortcuts=${shortcuts}' + P            截屏窗口\n'
shortcuts=${shortcuts}' + HJKL         切换活动窗口\n'
shortcuts=${shortcuts}' + SHIFT + HJKL 调整窗口大小\n'
shortcuts=${shortcuts}' + NUM          切换工作空间\n'
shortcuts=${shortcuts}' + SHIFT + NUM  移动活动窗口到工作空间\n'

# 输出JSON格式数据
echo "{\"text\":\" 快捷键\", \"tooltip\":\"$shortcuts\"}"
