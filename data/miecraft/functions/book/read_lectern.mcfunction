# 射线触碰方块
function miecraft:ray_cast/block/main

# 检测书本版本 版本太老则删除
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:"magic_book"}}} unless block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_data1:"0.3.0"}}} run function miecraft:book/update

# 若射线终点是讲台就判定书，给自己加正在阅读标签
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:"magic_book"}}} run scoreboard players set @s mie_book_reading 1

# 启用计分板
scoreboard players enable @s mie_book_jump

# 删除实体
kill @e[tag=mie_ray_mark]