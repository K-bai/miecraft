# 增加距离
scoreboard players add @s mie_ray_dis 1
# 生成实体
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mie_ray_mark"],Duration:9999}
# 递归
execute if score @s mie_ray_dis matches ..16 anchored feet positioned ^ ^ ^0.25 if block ~ ~ ~ minecraft:air run function miecraft:ray_cast/block/recurse

