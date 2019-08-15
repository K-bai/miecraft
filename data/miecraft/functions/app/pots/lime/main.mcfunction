# 射线触碰方块
function miecraft:ray_cast/block/main
# 若撞方块，则判断
execute at @e[tag=mie_ray_mark] run function miecraft:app/pots/lime/find
# 删除实体
kill @e[tag=mie_ray_mark]