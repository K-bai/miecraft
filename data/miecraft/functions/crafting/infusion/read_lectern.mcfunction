# 射线触碰方块
function miecraft:ray_cast/block/main

# 若射线终点是讲台就查找物品
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:2}}} align xyz positioned ~.5 ~.9 ~.5 as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=0},distance=...1] run function miecraft:crafting/infusion/start_inf

# 删除实体
kill @e[tag=mie_ray_mark]