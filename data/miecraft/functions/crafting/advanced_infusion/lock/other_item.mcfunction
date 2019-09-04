# 查找中心位置并确认框架 找到第一个就不找其他的了
scoreboard players set @s mie_temp6 0
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~1 lectern positioned ~2 ~-1 ~1 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~2 lectern positioned ~2 ~-1 ~2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~ lectern positioned ~2 ~-1 ~ run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~-1 lectern positioned ~2 ~-1 ~-1 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~2 ~ ~-2 lectern positioned ~2 ~-1 ~-2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~1 ~ ~-2 lectern positioned ~1 ~-1 ~-2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~1 ~ ~2 lectern positioned ~1 ~-1 ~2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~ ~ ~-2 lectern positioned ~ ~-1 ~-2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~ ~ ~2 lectern positioned ~ ~-1 ~2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-1 ~ ~-2 lectern positioned ~-1 ~-1 ~-2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-1 ~ ~2 lectern positioned ~-1 ~-1 ~2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~2 lectern positioned ~-2 ~-1 ~2 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~1 lectern positioned ~-2 ~-1 ~1 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~ lectern positioned ~-2 ~-1 ~ run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~-1 lectern positioned ~-2 ~-1 ~-1 run function miecraft:crafting/advanced_infusion/check_frame
execute unless score @s mie_temp6 matches 1 if block ~-2 ~ ~-2 lectern positioned ~-2 ~-1 ~-2 run function miecraft:crafting/advanced_infusion/check_frame

# 若框架正确且未锁定则锁定
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 run data merge entity @s {PickupDelay:32767,Age:-32768,Motion:[0d,0d,0d],NoGravity:1}
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 align xyz run tp @s ~.5 ~.6 ~.5

# 增加tag
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 run tag @s add mie_item_ainf_other_locked
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 run tag @s add mie_item_ainf_locked

# 若框架不正确且锁定则解锁
execute if entity @s[tag=mie_item_ainf_locked] if score @s mie_temp6 matches 0 run function miecraft:crafting/advanced_infusion/lock/unlock

