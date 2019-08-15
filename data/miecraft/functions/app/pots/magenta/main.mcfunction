# 计算能量
function miecraft:sheep_energy/item_to_score
execute if score @s mie_eg_magenta matches 1.. at @s run function miecraft:app/pots/magenta/launch


# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_magenta 1
function miecraft:sheep_energy/score_to_item/remove
