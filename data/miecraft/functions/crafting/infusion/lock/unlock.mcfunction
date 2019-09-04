tag @s remove mie_item_inf_locked
tag @s[tag=mie_item_inf_core_locked] remove mie_item_inf_core_locked
tag @s[tag=mie_item_inf_white_locked] remove mie_item_inf_white_locked
tag @s[tag=mie_item_inf_orange_locked] remove mie_item_inf_orange_locked
tag @s[tag=mie_item_inf_magenta_locked] remove mie_item_inf_magenta_locked
tag @s[tag=mie_item_inf_light_blue_locked] remove mie_item_inf_light_blue_locked
tag @s[tag=mie_item_inf_yellow_locked] remove mie_item_inf_yellow_locked
tag @s[tag=mie_item_inf_lime_locked] remove mie_item_inf_lime_locked
tag @s[tag=mie_item_inf_pink_locked] remove mie_item_inf_pink_locked
tag @s[tag=mie_item_inf_gray_locked] remove mie_item_inf_gray_locked
tag @s[tag=mie_item_inf_light_gray_locked] remove mie_item_inf_light_gray_locked
tag @s[tag=mie_item_inf_cyan_locked] remove mie_item_inf_cyan_locked
tag @s[tag=mie_item_inf_purple_locked] remove mie_item_inf_purple_locked
tag @s[tag=mie_item_inf_blue_locked] remove mie_item_inf_blue_locked
tag @s[tag=mie_item_inf_brown_locked] remove mie_item_inf_brown_locked
tag @s[tag=mie_item_inf_green_locked] remove mie_item_inf_green_locked
tag @s[tag=mie_item_inf_red_locked] remove mie_item_inf_red_locked
tag @s[tag=mie_item_inf_black_locked] remove mie_item_inf_black_locked

data merge entity @s {PickupDelay:0,NoGravity:0}

# 如果是正在注魔的核心物品就触发失败
execute if score @s mie_item_inf_t matches 1.. at @s run function miecraft:crafting/infusion/process/fail_effect
execute if score @s mie_item_inf_t matches 1.. at @s run tellraw @a[distance=..10] {"translate":"info.mie.infusion.interrupt"}