# 增加距离
scoreboard players add @s mie_ray_dis 1
# 生成实体
execute positioned ^ ^ ^0.25 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mie_ray_mark"],Duration:9999}
execute at @e[tag=mie_ray_mark,limit=1] as @e[type=sheep,distance=..2,scores={mie_temp1=0..}] at @s positioned ~ ~0.5 ~ if entity @e[tag=mie_ray_mark,distance=..0.9] run scoreboard players set @s mie_ray_type 1
execute at @e[tag=mie_ray_mark,limit=1] as @e[type=sheep,distance=..2,scores={mie_temp1=..-1}] at @s positioned ~ ~0.25 ~ if entity @e[tag=mie_ray_mark,distance=..0.5] run scoreboard players set @s mie_ray_type 2
# kill
kill @e[tag=mie_ray_mark]

# 递归
execute if score @s mie_ray_dis matches ..16 anchored feet positioned ^ ^ ^0.25 unless entity @e[scores={mie_ray_type=1..}] run function miecraft:ray_cast/entity/recurse

