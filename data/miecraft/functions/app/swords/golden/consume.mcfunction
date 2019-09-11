# 判断能量
function miecraft:sheep_energy/item_to_score
execute if score @s mie_eg_yellow matches 1.. at @e[distance=..5,sort=nearest,nbt={HurtTime:10s}] run summon minecraft:experience_orb ~ ~ ~ {Value:3}


# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_yellow 1
function miecraft:sheep_energy/score_to_item/remove
