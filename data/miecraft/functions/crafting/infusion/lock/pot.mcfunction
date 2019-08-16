# 初始化
scoreboard players set @s mie_temp1 0
scoreboard players set @s mie_temp2 0

# 查找中心位置
execute unless score @s mie_temp2 matches 1 if block ~2 ~-1 ~1 lectern positioned ~2 ~-1 ~1 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~2 ~-1 ~2 lectern positioned ~2 ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~2 ~-1 ~ lectern positioned ~2 ~-1 ~ run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~2 ~-1 ~-1 lectern positioned ~2 ~-1 ~-1 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~2 ~-1 ~-2 lectern positioned ~2 ~-1 ~-2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~1 ~-1 ~-2 lectern positioned ~1 ~-1 ~-2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~1 ~-1 ~2 lectern positioned ~1 ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~ ~-1 ~-2 lectern positioned ~ ~-1 ~-2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~ ~-1 ~2 lectern positioned ~ ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~-1 ~-1 ~-2 lectern positioned ~-1 ~-1 ~-2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~-1 ~-1 ~2 lectern positioned ~-1 ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~-2 ~-1 ~2 lectern positioned ~-2 ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~-2 ~-1 ~1 lectern positioned ~-2 ~-1 ~1 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~-2 ~-1 ~ lectern positioned ~-2 ~-1 ~ run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~-2 ~-1 ~-1 lectern positioned ~-2 ~-1 ~-1 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp2 matches 1 if block ~-2 ~-1 ~-2 lectern positioned ~-2 ~-1 ~-2 run function miecraft:crafting/infusion/check_frame

# 如果正确就lock
execute if score @s mie_temp2 matches 1 run data merge entity @s {PickupDelay:32767,Age:-32768}
execute if score @s mie_temp2 matches 1 run tag @s add mie_item_locked
execute if score @s mie_temp2 matches 1 run tag @s add mie_item_pot_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:0}}}] run tag @s add mie_item_white_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:1}}}] run tag @s add mie_item_orange_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:2}}}] run tag @s add mie_item_magenta_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:3}}}] run tag @s add mie_item_light_blue_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:4}}}] run tag @s add mie_item_yellow_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:5}}}] run tag @s add mie_item_lime_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:6}}}] run tag @s add mie_item_pink_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:7}}}] run tag @s add mie_item_gray_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:8}}}] run tag @s add mie_item_light_gray_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:9}}}] run tag @s add mie_item_cyan_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:10}}}] run tag @s add mie_item_purple_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:11}}}] run tag @s add mie_item_blue_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:12}}}] run tag @s add mie_item_brown_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:13}}}] run tag @s add mie_item_green_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:14}}}] run tag @s add mie_item_red_locked
execute if score @s mie_temp2 matches 1 if entity @s[nbt={Item:{tag:{mie_data1:15}}}] run tag @s add mie_item_black_locked
# 传送搞位置
execute if score @s mie_temp2 matches 1 at @s align xz run tp @s ~.5 ~ ~.5


# 如果不正确就unlock
execute if entity @s[tag=mie_item_locked] unless score @s mie_temp2 matches 1 run function miecraft:crafting/infusion/lock/clear_lock_tag
