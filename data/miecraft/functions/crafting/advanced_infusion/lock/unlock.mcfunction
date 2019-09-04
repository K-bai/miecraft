# 如果是正在注魔的核心物品就触发失败
execute if score @s mie_item_inf_t matches 1.. at @s run function miecraft:crafting/advanced_infusion/process/fail_interrupt
# 如果是正在注魔的附属物品就触发失败
execute if entity @s[tag=mie_item_ainf_other_locked] at @s align xyz positioned ~-2 ~ ~-2 as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=1..},dx=5,dy=1,dz=5] at @s run function miecraft:crafting/advanced_infusion/process/fail_interrupt

# 清除tag
tag @s remove mie_item_ainf_locked
tag @s[tag=mie_item_ainf_core_locked] remove mie_item_ainf_core_locked
tag @s[tag=mie_item_ainf_other_locked] remove mie_item_ainf_other_locked
tag @s[tag=mie_item_ainf_white_locked] remove mie_item_ainf_white_locked
tag @s[tag=mie_item_ainf_orange_locked] remove mie_item_ainf_orange_locked
tag @s[tag=mie_item_ainf_magenta_locked] remove mie_item_ainf_magenta_locked
tag @s[tag=mie_item_ainf_light_blue_locked] remove mie_item_ainf_light_blue_locked
tag @s[tag=mie_item_ainf_yellow_locked] remove mie_item_ainf_yellow_locked
tag @s[tag=mie_item_ainf_lime_locked] remove mie_item_ainf_lime_locked
tag @s[tag=mie_item_ainf_pink_locked] remove mie_item_ainf_pink_locked
tag @s[tag=mie_item_ainf_gray_locked] remove mie_item_ainf_gray_locked
tag @s[tag=mie_item_ainf_light_gray_locked] remove mie_item_ainf_light_gray_locked
tag @s[tag=mie_item_ainf_cyan_locked] remove mie_item_ainf_cyan_locked
tag @s[tag=mie_item_ainf_purple_locked] remove mie_item_ainf_purple_locked
tag @s[tag=mie_item_ainf_blue_locked] remove mie_item_ainf_blue_locked
tag @s[tag=mie_item_ainf_brown_locked] remove mie_item_ainf_brown_locked
tag @s[tag=mie_item_ainf_green_locked] remove mie_item_ainf_green_locked
tag @s[tag=mie_item_ainf_red_locked] remove mie_item_ainf_red_locked
tag @s[tag=mie_item_ainf_black_locked] remove mie_item_ainf_black_locked
# 清除NBT
data merge entity @s {PickupDelay:0,NoGravity:0}