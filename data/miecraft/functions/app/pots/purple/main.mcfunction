# 射线触碰方块
function miecraft:ray_cast/block/main
# 是方块，则执行
execute at @e[tag=mie_ray_mark] run function miecraft:app/pots/purple/find
# 删除实体
kill @e[tag=mie_ray_mark]