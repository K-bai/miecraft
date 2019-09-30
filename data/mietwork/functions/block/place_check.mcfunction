# 射线触碰方块的前一个方块
function miecraft:ray_cast/block_air/main
# 若射线终点是空气就放置
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:air run function mietwork:block/place
# 删除实体
kill @e[tag=mie_ray_mark]