# 检测框架是否正确
execute positioned ~ ~-1 ~ run function miecraft:crafting/advanced_infusion/check_frame

# 若框架正确且未锁定则锁定
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 run data merge entity @s {PickupDelay:32767,Age:-32768,Motion:[0d,0d,0d],NoGravity:1}
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 align xyz run tp @s ~.5 ~.9 ~.5

# 增加tag
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 run tag @s add mie_item_ainf_core_locked
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 run scoreboard players set @s mie_item_inf_t 0
execute if entity @s[tag=!mie_item_ainf_locked] if score @s mie_temp6 matches 1 run tag @s add mie_item_ainf_locked

# 若框架不正确且锁定则解锁
execute if entity @s[tag=mie_item_ainf_locked] if score @s mie_temp6 matches 0 run function miecraft:crafting/advanced_infusion/lock/unlock
