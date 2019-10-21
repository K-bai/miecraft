# 标记自己
tag @s add mie_pulse_temp
# 查找相同发射器和接收器
execute as @e[tag=mie_block_energy_receiver] at @s positioned ~ ~.8 ~ if score @s mie_block_id = @e[tag=mie_pulse_temp,distance=...2,limit=1] mie_block_id run tag @s add mie_block_receive_temp

# 添加能量
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_white 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_orange 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_magenta 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_l_blue 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_yellow 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_lime 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_pink 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_gray 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_l_gray 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_cyan 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_purple 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_blue 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_brown 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_green 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_red 0
scoreboard players set @e[tag=mie_block_receive_temp] mie_eg_black 0
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_white += @s mie_eg_white
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_orange += @s mie_eg_orange
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_magenta += @s mie_eg_magenta
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_l_blue += @s mie_eg_l_blue
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_yellow += @s mie_eg_yellow
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_lime += @s mie_eg_lime
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_pink += @s mie_eg_pink
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_gray += @s mie_eg_gray
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_l_gray += @s mie_eg_l_gray
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_cyan += @s mie_eg_cyan
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_purple += @s mie_eg_purple
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_blue += @s mie_eg_blue
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_brown += @s mie_eg_brown
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_green += @s mie_eg_green
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_red += @s mie_eg_red
scoreboard players operation @e[tag=mie_block_receive_temp] mie_eg_black += @s mie_eg_black
execute as @e[tag=mie_block_receive_temp] at @s run function mietwork:energy/receiver/receive_energy

# 清除标记
execute if entity @e[tag=mie_block_receive_temp] run kill @s
tag @e[tag=mie_block_receive_temp] remove mie_block_receive_temp
tag @s remove mie_pulse_temp