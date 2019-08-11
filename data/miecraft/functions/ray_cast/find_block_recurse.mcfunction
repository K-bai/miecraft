# 增加距离
scoreboard players add @s mie_ray_dis 1
# 生成实体
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mie_ray_mark"],Duration:9999}
execute unless entity @e[tag=mie_ray_mark] unless score @s mie_ray_dis matches ..16 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mie_ray_mark"]}
# 递归
execute if score @s mie_ray_dis matches ..16 anchored feet positioned ^ ^ ^0.25 if block ~ ~ ~ minecraft:air run function miecraft:ray_cast/find_block_recurse

