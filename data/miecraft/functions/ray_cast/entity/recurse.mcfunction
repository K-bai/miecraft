# 增加距离
scoreboard players add @s mie_ray_dis 1
# 生成实体
execute positioned ^ ^ ^0.25 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mie_ray_mark"],Duration:9999}
execute at @e[tag=mie_ray_mark,limit=1] run tag @e[type=#miecraft:ray_focus,dx=0,dy=0,dz=0,limit=1] add mie_ray_target


# kill
kill @e[tag=mie_ray_mark]

# 递归
execute if score @s mie_ray_dis matches ..16 anchored feet positioned ^ ^ ^0.25 unless entity @e[tag=mie_ray_target] run function miecraft:ray_cast/entity/recurse

