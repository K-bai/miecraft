# 计算罐子需求能量
execute as @e[tag=mie_block_type_need_energy,distance=...1] run function mietwork:energy/need/main
# 保存手中魔法罐剩余能量
execute store result score #var0 mie_system run data get entity @s SelectedItem.tag.mie_data2 1
# 消耗能量初始化
function miecraft:sheep_energy/reset_score
# 默认把手里的全塞进去
execute as @s[nbt={SelectedItem:{tag:{mie_data1:0}}}] run scoreboard players operation @s mie_eg_white = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:1}}}] run scoreboard players operation @s mie_eg_orange = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:2}}}] run scoreboard players operation @s mie_eg_magenta = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:3}}}] run scoreboard players operation @s mie_eg_l_blue = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:4}}}] run scoreboard players operation @s mie_eg_yellow = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:5}}}] run scoreboard players operation @s mie_eg_lime = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:6}}}] run scoreboard players operation @s mie_eg_pink = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:7}}}] run scoreboard players operation @s mie_eg_gray = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:8}}}] run scoreboard players operation @s mie_eg_l_gray = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:9}}}] run scoreboard players operation @s mie_eg_cyan = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:10}}}] run scoreboard players operation @s mie_eg_purple = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:11}}}] run scoreboard players operation @s mie_eg_blue = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:12}}}] run scoreboard players operation @s mie_eg_brown = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:13}}}] run scoreboard players operation @s mie_eg_green = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:14}}}] run scoreboard players operation @s mie_eg_red = #var0 mie_system
execute as @s[nbt={SelectedItem:{tag:{mie_data1:15}}}] run scoreboard players operation @s mie_eg_black = #var0 mie_system
# 需求太小就让塞进去的等于需求
execute as @s[nbt={SelectedItem:{tag:{mie_data1:0}}}] run scoreboard players operation @s mie_eg_white < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_white_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:1}}}] run scoreboard players operation @s mie_eg_orange < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_orange_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:2}}}] run scoreboard players operation @s mie_eg_magenta < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_magenta_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:3}}}] run scoreboard players operation @s mie_eg_l_blue < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_l_blue_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:4}}}] run scoreboard players operation @s mie_eg_yellow < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_yellow_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:5}}}] run scoreboard players operation @s mie_eg_lime < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_lime_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:6}}}] run scoreboard players operation @s mie_eg_pink < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_pink_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:7}}}] run scoreboard players operation @s mie_eg_gray < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_gray_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:8}}}] run scoreboard players operation @s mie_eg_l_gray < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_l_gray_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:9}}}] run scoreboard players operation @s mie_eg_cyan < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_cyan_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:10}}}] run scoreboard players operation @s mie_eg_purple < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_purple_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:11}}}] run scoreboard players operation @s mie_eg_blue < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_blue_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:12}}}] run scoreboard players operation @s mie_eg_brown < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_brown_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:13}}}] run scoreboard players operation @s mie_eg_green < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_green_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:14}}}] run scoreboard players operation @s mie_eg_red < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_red_t
execute as @s[nbt={SelectedItem:{tag:{mie_data1:15}}}] run scoreboard players operation @s mie_eg_black < @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_black_t
# 目标罐子加能量
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_white += @s mie_eg_white
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_orange += @s mie_eg_orange
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_magenta += @s mie_eg_magenta
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_l_blue += @s mie_eg_l_blue
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_yellow += @s mie_eg_yellow
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_lime += @s mie_eg_lime
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_pink += @s mie_eg_pink
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_gray += @s mie_eg_gray
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_l_gray += @s mie_eg_l_gray
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_cyan += @s mie_eg_cyan
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_purple += @s mie_eg_purple
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_blue += @s mie_eg_blue
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_brown += @s mie_eg_brown
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_green += @s mie_eg_green
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_red += @s mie_eg_red
scoreboard players operation @e[tag=mie_block_type_need_energy,distance=...1,limit=1] mie_eg_black += @s mie_eg_black
# 标记
execute if score @s mie_eg_white matches 0 if score @s mie_eg_orange matches 0 if score @s mie_eg_magenta matches 0 if score @s mie_eg_l_blue matches 0 if score @s mie_eg_yellow matches 0 if score @s mie_eg_lime matches 0 if score @s mie_eg_pink matches 0 if score @s mie_eg_gray matches 0 if score @s mie_eg_l_gray matches 0 if score @s mie_eg_cyan matches 0 if score @s mie_eg_purple matches 0 if score @s mie_eg_blue matches 0 if score @s mie_eg_brown matches 0 if score @s mie_eg_green matches 0 if score @s mie_eg_red matches 0 if score @s mie_eg_black matches 0 run tag @s add mie_no_fill_player
# 自身减能量
function miecraft:sheep_energy/score_to_item/remove
