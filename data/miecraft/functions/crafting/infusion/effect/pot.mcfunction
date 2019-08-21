execute if entity @s[tag=mie_item_white_inf_locked] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_orange_inf_locked] run particle minecraft:dust 0.941 0.463 0.075 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_magenta_inf_locked] run particle minecraft:dust 0.741 0.267 0.702 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_light_blue_inf_locked] run particle minecraft:dust 0.227 0.686 0.851 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_yellow_inf_locked] run particle minecraft:dust 0.973 0.776 0.153 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_lime_inf_locked] run particle minecraft:dust 0.439 0.725 0.098 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_pink_inf_locked] run particle minecraft:dust 0.929 0.553 0.675 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_gray_inf_locked] run particle minecraft:dust 0.243 0.267 0.278 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_light_gray_inf_locked] run particle minecraft:dust 0.557 0.557 0.525 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_cyan_inf_locked] run particle minecraft:dust 0.082 0.537 0.569 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_purple_inf_locked] run particle minecraft:dust 0.475 0.165 0.675 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_blue_inf_locked] run particle minecraft:dust 0.208 0.224 0.616 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_brown_inf_locked] run particle minecraft:dust 0.447 0.278 0.157 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_green_inf_locked] run particle minecraft:dust 0.329 0.427 0.106 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_red_inf_locked] run particle minecraft:dust 0.631 0.153 0.133 1 ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=mie_item_black_inf_locked] run particle minecraft:dust 0.078 0.082 0.098 1 ~ ~ ~ 0 0 0 1 1
execute unless entity @e[type=item,tag=mie_item_other_inf_locked,distance=...5] facing entity @e[type=item,tag=mie_item_other_inf_locked,sort=nearest,distance=..4,limit=1] feet positioned ^ ^ ^0.3 run function miecraft:crafting/infusion/effect/pot