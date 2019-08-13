# 初始化递归
scoreboard players set @s mie_ray_dis 0
# 计算动物成年与否
execute at @s as @e[type=sheep,distance=..8] store result score @s mie_temp1 run data get entity @s Age
# 递归
execute at @s anchored eyes positioned ^ ^ ^ run function miecraft:ray_cast/entity/recurse