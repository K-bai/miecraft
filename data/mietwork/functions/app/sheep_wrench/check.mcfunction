# 射线触碰方块
function miecraft:ray_cast/block/main
# 若是特殊方块，则执行
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ #mietwork:block_base align xyz positioned ~.5 ~ ~.5 if entity @e[tag=mie_block,distance=...1] run function mietwork:app/sheep_wrench/info_or_tweak
# 删除实体
kill @e[tag=mie_ray_mark]