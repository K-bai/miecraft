# 射线触碰方块
function miecraft:ray_cast/block/main
# 若水源，则收回
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:water run function miecraft:app/pots/blue/fill
# 删除实体
kill @e[tag=mie_ray_mark]

# 射线触碰方块的前一个方块
execute if entity @s[tag=!mie_pot_blue_fill] run function miecraft:ray_cast/block_air/main
# 若射线终点是空气就放置
execute if entity @s[tag=!mie_pot_blue_fill] at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:air run function miecraft:app/pots/blue/place
# 删除实体
kill @e[tag=mie_ray_mark]
# 删除tag
tag @s[tag=mie_pot_blue_fill] remove mie_pot_blue_fill