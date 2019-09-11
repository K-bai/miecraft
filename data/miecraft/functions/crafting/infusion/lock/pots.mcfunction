# 查找中心位置并确认框架 找到第一个就不找其他的了
scoreboard players set @s mie_temp6 0
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~1 lectern positioned ~2 ~-1 ~1 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~2 lectern positioned ~2 ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~ lectern positioned ~2 ~-1 ~ run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~-1 lectern positioned ~2 ~-1 ~-1 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~-2 lectern positioned ~2 ~-1 ~-2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~1 ~ ~-2 lectern positioned ~1 ~-1 ~-2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~1 ~ ~2 lectern positioned ~1 ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~ ~ ~-2 lectern positioned ~ ~-1 ~-2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~ ~ ~2 lectern positioned ~ ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-1 ~ ~-2 lectern positioned ~-1 ~-1 ~-2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-1 ~ ~2 lectern positioned ~-1 ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~2 lectern positioned ~-2 ~-1 ~2 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~1 lectern positioned ~-2 ~-1 ~1 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~ lectern positioned ~-2 ~-1 ~ run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~-1 lectern positioned ~-2 ~-1 ~-1 run function miecraft:crafting/infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~-2 lectern positioned ~-2 ~-1 ~-2 run function miecraft:crafting/infusion/check_frame


# 若框架正确则锁定
execute if entity @s[tag=!mie_item_inf_locked] if score @s mie_temp6 matches 1 run data merge entity @s {PickupDelay:32767,Age:-32768,Motion:[0d,0d,0d],NoGravity:1}
execute if entity @s[tag=!mie_item_inf_locked] if score @s mie_temp6 matches 1 align xyz run tp @s ~.5 ~.3 ~.5
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:0}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_white_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:1}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_orange_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:2}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_magenta_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:3}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_light_blue_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:4}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_yellow_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:5}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_lime_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:6}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_pink_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:7}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_gray_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:8}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_light_gray_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:9}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_cyan_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:10}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_purple_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:11}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_blue_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:12}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_brown_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:13}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_green_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:14}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_red_locked
execute if entity @s[tag=!mie_item_inf_locked,nbt={Item:{tag:{mie_id:"pot",mie_data1:15}}}] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_black_locked
execute if entity @s[tag=!mie_item_inf_locked] if score @s mie_temp6 matches 1 run tag @s add mie_item_inf_locked

# 若框架不正确且锁定则解锁
execute if entity @s[tag=mie_item_inf_locked] if score @s mie_temp6 matches 0 run function miecraft:crafting/infusion/lock/unlock
