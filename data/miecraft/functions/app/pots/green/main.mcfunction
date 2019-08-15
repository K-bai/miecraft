# 射线触碰方块
function miecraft:ray_cast/block/main
# 若矿物，则执行
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/find
# 删除实体
kill @e[tag=mie_ray_mark]