# 标记自己
tag @s add mie_ab_effect_temp

# 效果
execute if score @s mie_pot_color matches 0 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 1 run particle minecraft:dust 0.941 0.463 0.075 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 2 run particle minecraft:dust 0.741 0.267 0.702 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 3 run particle minecraft:dust 0.227 0.686 0.851 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 4 run particle minecraft:dust 0.973 0.776 0.153 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 5 run particle minecraft:dust 0.439 0.725 0.098 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 6 run particle minecraft:dust 0.929 0.553 0.675 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 7 run particle minecraft:dust 0.243 0.267 0.278 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 8 run particle minecraft:dust 0.557 0.557 0.525 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 9 run particle minecraft:dust 0.082 0.537 0.569 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 10 run particle minecraft:dust 0.475 0.165 0.675 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 11 run particle minecraft:dust 0.208 0.224 0.616 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 12 run particle minecraft:dust 0.447 0.278 0.157 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 13 run particle minecraft:dust 0.329 0.427 0.106 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 14 run particle minecraft:dust 0.631 0.153 0.133 1 ~ ~ ~ 0 0 0 1 1
execute if score @s mie_pot_color matches 15 run particle minecraft:dust 0.078 0.082 0.098 1 ~ ~ ~ 0 0 0 1 1


# 查找目标
execute as @a[distance=..10] if score @s mie_id = @e[tag=mie_ab_effect_temp,limit=1] mie_id run tag @s add mie_ab_target
tp @s ~ ~ ~ facing entity @a[tag=mie_ab_target,limit=1] feet
execute at @s run tp @s ^ ^ ^0.25

# 停止
execute at @s if entity @a[tag=mie_ab_target,limit=1,distance=..1] run kill @s

# 删除tag
tag @s remove mie_ab_effect_temp
tag @a[tag=mie_ab_target] remove mie_ab_target