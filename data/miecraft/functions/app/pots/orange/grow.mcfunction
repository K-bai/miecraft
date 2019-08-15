# 计算能量
function miecraft:sheep_energy/item_to_score
# 效果
execute if score @s mie_eg_orange matches 10.. run data merge entity @e[tag=mie_ray_target,type=#miecraft:can_grow,limit=1] {Age:0}
execute if score @s mie_eg_orange matches 10.. at @e[tag=mie_ray_target,limit=1] align xyz run particle minecraft:happy_villager ~.5 ~.5 ~.5 .3 .3 .3 1 25
execute if score @s mie_eg_orange matches 10.. at @e[tag=mie_ray_target,limit=1] align xyz run playsound minecraft:block.grass.break ambient @a ~.5 ~.5 ~.5 1 0.5
# 效果2
execute if score @s mie_eg_orange matches 10.. at @e[tag=mie_ray_target,type=zombie,limit=1] run summon giant ~ ~ ~
execute if score @s mie_eg_orange matches 10.. at @e[tag=mie_ray_target,type=zombie,limit=1] align xyz run playsound minecraft:entity.generic.explode ambient @a ~.5 ~.5 ~.5 1 
execute if score @s mie_eg_orange matches 10.. run kill @e[tag=mie_ray_target,type=zombie,limit=1]


# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_orange 10
function miecraft:sheep_energy/score_to_item/remove
