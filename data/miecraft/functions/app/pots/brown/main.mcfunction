# 计算能量
function miecraft:sheep_energy/item_to_score

# 生成药水
execute if score @s mie_eg_brown matches 5.. at @s run function miecraft:app/pots/brown/launch


# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_brown 5
function miecraft:sheep_energy/score_to_item/remove