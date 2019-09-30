# 增加距离
scoreboard players add @s mie_ray_dis 1
# 生成实体
execute positioned ^ ^ ^0.20 unless block ~ ~ ~ #uin:general/gases positioned ^ ^ ^-0.20 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mie_ray_mark"],Duration:9999}
# 递归
execute if score @s mie_ray_dis matches ..20 anchored feet positioned ^ ^ ^0.20 if block ~ ~ ~ #uin:general/gases run function miecraft:ray_cast/block_air/recurse

