# 射线触碰方块
function miecraft:ray_cast/block/main
# 若射线终点是讲台就判定框架
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:"magic_book"}}} run function miecraft:crafting/pots/check_frame
# 若框架通过则判定内部核心
execute if entity @s[tag=mie_frame_pass_all] at @e[tag=mie_ray_mark] run function miecraft:crafting/pots/check_core
# 清空多方块结构
execute if entity @s[tag=mie_frame_destroy] at @e[tag=mie_ray_mark] run fill ~-1 ~ ~-1 ~1 ~-3 ~1 air replace
execute if entity @s[tag=mie_frame_destroy] at @e[tag=mie_ray_mark] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~
# 合成失败 清空中心
execute if entity @s[tag=mie_frame_core_destroy] at @e[tag=mie_ray_mark] run setblock ~ ~ ~ air destroy
execute if entity @s[tag=mie_frame_core_destroy] at @e[tag=mie_ray_mark] run playsound minecraft:block.anvil.place ambient @a ~ ~ ~ 1 0.5
execute if entity @s[tag=mie_frame_core_destroy] at @e[tag=mie_ray_mark] run playsound minecraft:block.anvil.place ambient @a ~ ~ ~ 1 1


# 删除实体
tag @s[tag=mie_frame_pass_all] remove mie_frame_pass_all
tag @s[tag=mie_frame_destroy] remove mie_frame_destroy
tag @s[tag=mie_frame_core_destroy] remove mie_frame_core_destroy
kill @e[tag=mie_ray_mark]