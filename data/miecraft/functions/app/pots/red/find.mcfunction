# 计算能量
function miecraft:sheep_energy/item_to_score
# 判定是否有方块
scoreboard players set @s mie_temp1 0
execute if block ~ ~ ~ minecraft:iron_ore run scoreboard players set @s mie_temp1 1
execute if block ~ ~ ~ minecraft:gold_ore run scoreboard players set @s mie_temp1 2
# 有则破坏
execute if score @s mie_temp1 matches 1.. if score @s mie_eg_red matches 1.. run function miecraft:app/pots/red/smelt

# 消耗能量
execute if score @s mie_temp1 matches 1.. run function miecraft:sheep_energy/reset_score
execute if score @s mie_temp1 matches 1.. run scoreboard players set @s mie_eg_red 10
execute if score @s mie_temp1 matches 1.. run function miecraft:sheep_energy/score_to_item/remove
