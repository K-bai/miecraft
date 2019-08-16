# 射线触碰方块
function miecraft:ray_cast/block/main
# 设定标记
scoreboard players set @s mie_temp1 0
# 若射线终点是讲台就判定框架
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:2}}} run function miecraft:crafting/pots/check_item


# 删除实体
kill @e[tag=mie_ray_mark]