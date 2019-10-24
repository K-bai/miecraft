# 寻找能提供能量的方块 此处有dxdydz bug
execute align xyz positioned ~-1 ~ ~ as @e[tag=mie_block_type_own_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_own_temp
execute align xyz positioned ~1 ~ ~ as @e[tag=mie_block_type_own_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_own_temp
execute align xyz positioned ~ ~ ~-1 as @e[tag=mie_block_type_own_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_own_temp
execute align xyz positioned ~ ~ ~1 as @e[tag=mie_block_type_own_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_own_temp
execute as @e[tag=mie_block_own_temp] if score @s mie_eg_white matches 0 if score @s mie_eg_orange matches 0 if score @s mie_eg_magenta matches 0 if score @s mie_eg_l_blue matches 0 if score @s mie_eg_yellow matches 0 if score @s mie_eg_lime matches 0 if score @s mie_eg_pink matches 0 if score @s mie_eg_gray matches 0 if score @s mie_eg_l_gray matches 0 if score @s mie_eg_cyan matches 0 if score @s mie_eg_purple matches 0 if score @s mie_eg_blue matches 0 if score @s mie_eg_brown matches 0 if score @s mie_eg_green matches 0 if score @s mie_eg_red matches 0 if score @s mie_eg_black matches 0 run tag @s remove mie_block_own_temp

# 清空
scoreboard players set @s mie_eg_white 0
scoreboard players set @s mie_eg_orange 0
scoreboard players set @s mie_eg_magenta 0
scoreboard players set @s mie_eg_l_blue 0
scoreboard players set @s mie_eg_yellow 0
scoreboard players set @s mie_eg_lime 0
scoreboard players set @s mie_eg_pink 0
scoreboard players set @s mie_eg_gray 0
scoreboard players set @s mie_eg_l_gray 0
scoreboard players set @s mie_eg_cyan 0
scoreboard players set @s mie_eg_purple 0
scoreboard players set @s mie_eg_blue 0
scoreboard players set @s mie_eg_brown 0
scoreboard players set @s mie_eg_green 0
scoreboard players set @s mie_eg_red 0
scoreboard players set @s mie_eg_black 0
# 所有能力求和
scoreboard players operation @s mie_eg_white += @e[tag=mie_block_own_temp] mie_eg_white
scoreboard players operation @s mie_eg_orange += @e[tag=mie_block_own_temp] mie_eg_orange
scoreboard players operation @s mie_eg_magenta += @e[tag=mie_block_own_temp] mie_eg_magenta
scoreboard players operation @s mie_eg_l_blue += @e[tag=mie_block_own_temp] mie_eg_l_blue
scoreboard players operation @s mie_eg_yellow += @e[tag=mie_block_own_temp] mie_eg_yellow
scoreboard players operation @s mie_eg_lime += @e[tag=mie_block_own_temp] mie_eg_lime
scoreboard players operation @s mie_eg_pink += @e[tag=mie_block_own_temp] mie_eg_pink
scoreboard players operation @s mie_eg_gray += @e[tag=mie_block_own_temp] mie_eg_gray
scoreboard players operation @s mie_eg_l_gray += @e[tag=mie_block_own_temp] mie_eg_l_gray
scoreboard players operation @s mie_eg_cyan += @e[tag=mie_block_own_temp] mie_eg_cyan
scoreboard players operation @s mie_eg_purple += @e[tag=mie_block_own_temp] mie_eg_purple
scoreboard players operation @s mie_eg_blue += @e[tag=mie_block_own_temp] mie_eg_blue
scoreboard players operation @s mie_eg_brown += @e[tag=mie_block_own_temp] mie_eg_brown
scoreboard players operation @s mie_eg_green += @e[tag=mie_block_own_temp] mie_eg_green
scoreboard players operation @s mie_eg_red += @e[tag=mie_block_own_temp] mie_eg_red
scoreboard players operation @s mie_eg_black += @e[tag=mie_block_own_temp] mie_eg_black

# 查找相同通道的接收端
tag @s add mie_block_self_temp
execute if score @s mie_channel_id matches 0 run tag @e[tag=mie_block_energy_receiver,tag=!mie_block_working,distance=..10] add mie_block_receive_same_temp
execute if score @s mie_channel_id matches 1.. as @e[tag=mie_block_energy_receiver,tag=!mie_block_working,distance=..10] if score @s mie_channel_id = @e[tag=mie_block_self_temp,limit=1] mie_channel_id run tag @s add mie_block_receive_same_temp
tag @e[tag=mie_block_energy_receiver,tag=!mie_block_working,distance=..10,scores={mie_channel_id=0}] add mie_block_receive_same_temp
tag @s remove mie_block_self_temp
# 遍历所有类型需求，查找接收端
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_white=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_white_t=1..},limit=1,sort=random] add mie_block_receive_white_temp
tag @e[tag=mie_block_receive_white_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_orange=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_orange_t=1..},limit=1,sort=random] add mie_block_receive_orange_temp
tag @e[tag=mie_block_receive_orange_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_magenta=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_magenta_t=1..},limit=1,sort=random] add mie_block_receive_magenta_temp
tag @e[tag=mie_block_receive_magenta_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_l_blue=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_l_blue_t=1..},limit=1,sort=random] add mie_block_receive_light_blue_temp
tag @e[tag=mie_block_receive_light_blue_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_yellow=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_yellow_t=1..},limit=1,sort=random] add mie_block_receive_yellow_temp
tag @e[tag=mie_block_receive_yellow_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_lime=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_lime_t=1..},limit=1,sort=random] add mie_block_receive_lime_temp
tag @e[tag=mie_block_receive_lime_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_pink=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_pink_t=1..},limit=1,sort=random] add mie_block_receive_pink_temp
tag @e[tag=mie_block_receive_pink_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_gray=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_gray_t=1..},limit=1,sort=random] add mie_block_receive_gray_temp
tag @e[tag=mie_block_receive_gray_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_l_gray=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_l_gray_t=1..},limit=1,sort=random] add mie_block_receive_light_gray_temp
tag @e[tag=mie_block_receive_light_gray_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_cyan=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_cyan_t=1..},limit=1,sort=random] add mie_block_receive_cyan_temp
tag @e[tag=mie_block_receive_cyan_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_purple=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_purple_t=1..},limit=1,sort=random] add mie_block_receive_purple_temp
tag @e[tag=mie_block_receive_purple_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_blue=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_blue_t=1..},limit=1,sort=random] add mie_block_receive_blue_temp
tag @e[tag=mie_block_receive_blue_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_brown=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_brown_t=1..},limit=1,sort=random] add mie_block_receive_brown_temp
tag @e[tag=mie_block_receive_brown_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_green=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_green_t=1..},limit=1,sort=random] add mie_block_receive_green_temp
tag @e[tag=mie_block_receive_green_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_red=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_red_t=1..},limit=1,sort=random] add mie_block_receive_red_temp
tag @e[tag=mie_block_receive_red_temp] add mie_block_receive_temp
execute unless entity @e[tag=mie_block_receive_temp] at @s[scores={mie_eg_black=1..}] run tag @e[tag=mie_block_receive_same_temp,scores={mie_eg_black_t=1..},limit=1,sort=random] add mie_block_receive_black_temp
tag @e[tag=mie_block_receive_black_temp] add mie_block_receive_temp


# 生成脉冲
execute if entity @e[tag=mie_block_receive_temp] at @s run function mietwork:energy/pulse/new_pulse

# 减掉周围方块能量
execute if entity @e[tag=mie_block_receive_white_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_white=1..},limit=1,sort=random] mie_eg_white 1
execute if entity @e[tag=mie_block_receive_orange_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_orange=1..},limit=1,sort=random] mie_eg_orange 1
execute if entity @e[tag=mie_block_receive_magenta_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_magenta=1..},limit=1,sort=random] mie_eg_magenta 1
execute if entity @e[tag=mie_block_receive_light_blue_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_l_blue=1..},limit=1,sort=random] mie_eg_l_blue 1
execute if entity @e[tag=mie_block_receive_yellow_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_yellow=1..},limit=1,sort=random] mie_eg_yellow 1
execute if entity @e[tag=mie_block_receive_lime_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_lime=1..},limit=1,sort=random] mie_eg_lime 1
execute if entity @e[tag=mie_block_receive_pink_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_pink=1..},limit=1,sort=random] mie_eg_pink 1
execute if entity @e[tag=mie_block_receive_gray_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_gray=1..},limit=1,sort=random] mie_eg_gray 1
execute if entity @e[tag=mie_block_receive_light_gray_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_l_gray=1..},limit=1,sort=random] mie_eg_l_gray 1
execute if entity @e[tag=mie_block_receive_cyan_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_cyan=1..},limit=1,sort=random] mie_eg_cyan 1
execute if entity @e[tag=mie_block_receive_purple_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_purple=1..},limit=1,sort=random] mie_eg_purple 1
execute if entity @e[tag=mie_block_receive_blue_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_blue=1..},limit=1,sort=random] mie_eg_blue 1
execute if entity @e[tag=mie_block_receive_brown_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_brown=1..},limit=1,sort=random] mie_eg_brown 1
execute if entity @e[tag=mie_block_receive_green_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_green=1..},limit=1,sort=random] mie_eg_green 1
execute if entity @e[tag=mie_block_receive_red_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_red=1..},limit=1,sort=random] mie_eg_red 1
execute if entity @e[tag=mie_block_receive_black_temp] run scoreboard players remove @e[tag=mie_block_own_temp,scores={mie_eg_black=1..},limit=1,sort=random] mie_eg_black 1

# 接收器加tag
tag @e[tag=mie_block_receive_temp] add mie_block_working
# 减去周围需求
execute as @e[tag=mie_block_receive_temp] at @s run function mietwork:energy/receiver/remove_need
# 所有发射器得到需求
execute as @e[type=armor_stand,tag=mie_block_energy_receiver,tag=!mie_block_working] at @s run function mietwork:energy/receiver/get_need


# 删除标记
tag @e[tag=mie_block_own_temp] remove mie_block_own_temp

tag @e[tag=mie_block_receive_same_temp] remove mie_block_receive_same_temp
tag @e[tag=mie_block_receive_temp] remove mie_block_receive_temp
tag @e[tag=mie_block_receive_white_temp] remove mie_block_receive_white_temp
tag @e[tag=mie_block_receive_orange_temp] remove mie_block_receive_orange_temp
tag @e[tag=mie_block_receive_magenta_temp] remove mie_block_receive_magenta_temp
tag @e[tag=mie_block_receive_light_blue_temp] remove mie_block_receive_light_blue_temp
tag @e[tag=mie_block_receive_yellow_temp] remove mie_block_receive_yellow_temp
tag @e[tag=mie_block_receive_lime_temp] remove mie_block_receive_lime_temp
tag @e[tag=mie_block_receive_pink_temp] remove mie_block_receive_pink_temp
tag @e[tag=mie_block_receive_gray_temp] remove mie_block_receive_gray_temp
tag @e[tag=mie_block_receive_light_gray_temp] remove mie_block_receive_light_gray_temp
tag @e[tag=mie_block_receive_cyan_temp] remove mie_block_receive_cyan_temp
tag @e[tag=mie_block_receive_purple_temp] remove mie_block_receive_purple_temp
tag @e[tag=mie_block_receive_blue_temp] remove mie_block_receive_blue_temp
tag @e[tag=mie_block_receive_brown_temp] remove mie_block_receive_brown_temp
tag @e[tag=mie_block_receive_green_temp] remove mie_block_receive_green_temp
tag @e[tag=mie_block_receive_red_temp] remove mie_block_receive_red_temp
tag @e[tag=mie_block_receive_black_temp] remove mie_block_receive_black_temp
