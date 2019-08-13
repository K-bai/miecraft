# 计算能量
function miecraft:sheep_energy/item_to_score
execute if score @s mie_eg_blue matches 2.. run setblock ~ ~ ~ water keep
execute if score @s mie_eg_blue matches 2.. align xyz run particle minecraft:splash ~.5 ~.5 ~.5 .3 .3 .3 1 100
execute if score @s mie_eg_blue matches 2.. align xyz run playsound minecraft:item.bucket.empty ambient @a ~.5 ~.5 ~.5

# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_blue 2
function miecraft:sheep_energy/score_to_item/remove