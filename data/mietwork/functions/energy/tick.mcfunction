# 第一步：查看自己的能力
# 检测有能量需求的方块 创建需求
# 空中有所属脉冲的接收器把周围方块的能量需求去掉
# 能量接收器得到全部需求，空中有所属脉冲的跳过这一步

# 第二步：协调能量供给
# 对每一个空中无所属脉冲的跳过这一步，其他发射器执行：
# 检测周围能够提供能量的方块
# 本发射器得到全部能够提供的能量列表
# 能够供给能量的发射器随机查找接收端(通道相同)，从旁边方块提取能量发射子弹
# 接收端把周围方块的能量需求去掉，所有接收器得到全部需求
# 回到第二步开头继续对下一个发射器执行


# 检测有能量需求的方块-创建需求
execute as @e[type=armor_stand,tag=mie_block_type_need_energy] run function mietwork:energy/need/main
# 标记空中有所属脉冲的接收器和发射器
execute as @e[tag=mie_pulse] at @s run function mietwork:energy/pulse/mark_all_receiver_and_emitter
# 空中有所属脉冲的接收器把周围方块的能量需求去掉
execute as @e[type=armor_stand,tag=mie_block_energy_receiver,tag=mie_block_working] at @s run function mietwork:energy/receiver/remove_need
# 空中没有所属脉冲的接收器得到周围方块的需求
execute as @e[type=armor_stand,tag=mie_block_energy_receiver,tag=!mie_block_working] at @s run function mietwork:energy/receiver/get_need

# 对每一个空中无所属脉冲的跳过这一步，其他发射器执行：
# 检测周围能够提供能量的方块，本发射器得到全部能够提供的能量列表
# 能够供给能量的发射器随机查找接收端(通道相同)，从旁边方块提取能量发射子弹
# 接收端把周围方块的能量需求去掉，所有接收器得到全部需求
execute as @e[type=armor_stand,tag=mie_block_energy_emitter,tag=!mie_block_working] at @s run function mietwork:energy/emitter/send

# 发射器和接收器的旋转
execute as @e[tag=mie_block_energy_emitter,tag=mie_block_working] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=mie_block_energy_emitter,tag=mie_block_working] at @s as @e[tag=mie_block_energy_emitter_sub,distance=...1] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=mie_block_energy_receiver,tag=mie_block_working] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=mie_block_energy_receiver,tag=mie_block_working] at @s as @e[tag=mie_block_energy_receiver_sub,distance=...1] at @s run tp @s ~ ~ ~ ~3 ~

# 清空tag
tag @e[tag=mie_block_working] remove mie_block_working

# 脉冲飞行
execute as @e[tag=mie_pulse] at @s run function wrnmd:generic/start
kill @e[tag=mie_pulse,tag=wrnmd_touch_edge]
# 脉冲查找终点
execute as @e[tag=mie_pulse] at @s run function mietwork:energy/pulse/find_receiver
