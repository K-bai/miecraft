# 计算能量
function miecraft:sheep_energy/item_to_score
# 效果
execute if score @s mie_eg_cyan matches 5.. run data modify entity @e[tag=mie_ray_target,limit=1] InLove set value 600
execute if score @s mie_eg_cyan matches 5.. run data modify entity @e[tag=mie_ray_target,limit=1] Age set value 0
execute if score @s mie_eg_cyan matches 5.. run data modify entity @e[tag=mie_ray_target,type=villager,limit=1] Willing set value 1
execute if score @s mie_eg_cyan matches 5.. at @e[tag=mie_ray_target,limit=1] align xyz run particle minecraft:heart ~.5 ~.5 ~.5 .3 .3 .3 1 25
execute if score @s mie_eg_cyan matches 5.. at @e[tag=mie_ray_target,limit=1] align xyz run playsound minecraft:entity.player.burp ambient @a ~.5 ~.5 ~.5 1 0.7


# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_cyan 5
function miecraft:sheep_energy/score_to_item/remove
