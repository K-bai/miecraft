# 射线触碰方块的前一个方块
function miecraft:ray_cast/block_air/main
# 计算能量
function miecraft:sheep_energy/item_to_score
# 若射线终点是空气且能量够就放置
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:air if score @s mie_eg_black matches 50.. run function miecraft:app/pots/black/set_point

# 消耗能量
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:air run function miecraft:sheep_energy/reset_score
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:air run scoreboard players set @s mie_eg_black 50
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:air run function miecraft:sheep_energy/score_to_item/remove
# 删除实体
kill @e[tag=mie_ray_mark]