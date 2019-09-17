# 射线触碰方块
function miecraft:ray_cast/block/main

# 若射线终点不是讲台就取消看书状态
scoreboard players set @s mie_book_reading 0
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:"magic_book"}}} run scoreboard players set @s mie_book_reading 1

# 如果还在看书就记录跳转
execute if score @s mie_book_reading matches 1.. at @e[tag=mie_ray_mark] run function miecraft:book/jump/record_item

# 删除实体
kill @e[tag=mie_ray_mark]
