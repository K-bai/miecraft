# 计算能量
function miecraft:sheep_energy/item_to_score
# 有能量则破坏
execute if score @s mie_eg_purple matches 25.. run loot give @s mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_purple 25
function miecraft:sheep_energy/score_to_item/remove
