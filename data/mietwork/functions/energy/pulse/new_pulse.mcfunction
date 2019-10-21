# 生成脉冲
summon area_effect_cloud ~ ~ ~ {Tags:["mie_pulse","mie_pulse_new","wrnmd_bullet"],Duration:999}
# 标记发射和接收
execute store result score @e[tag=mie_pulse_new,limit=1] mie_pulse_id run scoreboard players get @s mie_block_id
execute store result score @e[tag=mie_pulse_new,limit=1] mie_block_id run scoreboard players get @e[tag=mie_block_receive_temp,limit=1] mie_block_id
# 添加携带能量
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_white 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_orange 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_magenta 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_l_blue 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_yellow 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_lime 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_pink 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_gray 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_l_gray 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_cyan 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_purple 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_blue 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_brown 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_green 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_red 0
scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_black 0
execute if entity @e[tag=mie_block_receive_white_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_white 1
execute if entity @e[tag=mie_block_receive_orange_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_orange 1
execute if entity @e[tag=mie_block_receive_magenta_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_magenta 1
execute if entity @e[tag=mie_block_receive_light_blue_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_l_blue 1
execute if entity @e[tag=mie_block_receive_yellow_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_yellow 1
execute if entity @e[tag=mie_block_receive_lime_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_lime 1
execute if entity @e[tag=mie_block_receive_pink_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_pink 1
execute if entity @e[tag=mie_block_receive_gray_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_gray 1
execute if entity @e[tag=mie_block_receive_light_gray_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_l_gray 1
execute if entity @e[tag=mie_block_receive_cyan_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_cyan 1
execute if entity @e[tag=mie_block_receive_purple_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_purple 1
execute if entity @e[tag=mie_block_receive_blue_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_blue 1
execute if entity @e[tag=mie_block_receive_brown_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_brown 1
execute if entity @e[tag=mie_block_receive_green_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_green 1
execute if entity @e[tag=mie_block_receive_red_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_red 1
execute if entity @e[tag=mie_block_receive_black_temp] run scoreboard players set @e[tag=mie_pulse_new,limit=1] mie_eg_black 1

# 初始化飞行参数
# create marker
execute as @e[tag=mie_pulse_new,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=mie_block_receive_temp,limit=1]
execute as @e[tag=mie_pulse_new,limit=1] at @s run summon area_effect_cloud ^ ^ ^0.2 {Tags:["wrnmd_mark"],Duration:100}
# save speed and direction
execute as @e[tag=mie_pulse_new] store result score @s wrnmd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag=mie_pulse_new] store result score @s wrnmd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag=mie_pulse_new] store result score @s wrnmd_z0 run data get entity @s Pos[2] 1000
execute store result score #var0 wrnmd_system run data get entity @e[tag=wrnmd_mark,limit=1] Pos[0] 1000
execute store result score #var1 wrnmd_system run data get entity @e[tag=wrnmd_mark,limit=1] Pos[1] 1000
execute store result score #var2 wrnmd_system run data get entity @e[tag=wrnmd_mark,limit=1] Pos[2] 1000
scoreboard players operation #var0 wrnmd_system -= @e[tag=mie_pulse_new,limit=1] wrnmd_x0
scoreboard players operation #var1 wrnmd_system -= @e[tag=mie_pulse_new,limit=1] wrnmd_y0
scoreboard players operation #var2 wrnmd_system -= @e[tag=mie_pulse_new,limit=1] wrnmd_z0
scoreboard players operation @e[tag=mie_pulse_new,limit=1] wrnmd_x0 = #var0 wrnmd_system
scoreboard players operation @e[tag=mie_pulse_new,limit=1] wrnmd_y0 = #var1 wrnmd_system
scoreboard players operation @e[tag=mie_pulse_new,limit=1] wrnmd_z0 = #var2 wrnmd_system
execute as @e[tag=mie_pulse_new,limit=1] at @s run tp @s ~ ~.8 ~


# clear tag
kill @e[tag=wrnmd_mark]
tag @e[tag=mie_pulse_new] remove mie_pulse_new
