# 计算能量
function miecraft:sheep_energy/item_to_score

# 高亮
execute at @s if score @s mie_eg_yellow matches 5.. run effect give @e[type=#uin:tech/mobs] minecraft:glowing 20 0 
# 效果
execute at @s if score @s mie_eg_yellow matches 5.. run particle minecraft:dust 1 1 0 1 ~ ~.5 ~ .3 .3 .3 1 100
execute at @s if score @s mie_eg_yellow matches 5.. run playsound minecraft:entity.splash_potion.break ambient @a ~ ~ ~ 1 0.7

# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_yellow 5
function miecraft:sheep_energy/score_to_item/remove


