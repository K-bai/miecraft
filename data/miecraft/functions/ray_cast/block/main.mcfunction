# 初始化递归
scoreboard players set @s mie_ray_dis 0
# 递归
execute at @s anchored eyes positioned ^ ^ ^ run function miecraft:ray_cast/block/recurse
