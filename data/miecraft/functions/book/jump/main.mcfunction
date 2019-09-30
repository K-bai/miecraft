# 射线触碰方块
function miecraft:ray_cast/block/main

# 若射线终点是讲台就改页码
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:"magic_book"}}} run function miecraft:book/jump/change_page
# 如果不是就提示
execute at @e[tag=mie_ray_mark] unless block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:"magic_book"}}} run tellraw @s {"translate":"info.mie.book.jump_fail"}


# 启用计分板
scoreboard players enable @s mie_book_jump

# 删除实体
kill @e[tag=mie_ray_mark]