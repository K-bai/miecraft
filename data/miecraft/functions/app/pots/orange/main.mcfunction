# 射线触碰小动物
function miecraft:ray_cast/entity/main
# 判断是否年轻
execute as @e[tag=mie_ray_target,type=#uin:tech/ages] store result score @s mie_temp1 run data get entity @s Age 
# 如果年轻就成长
execute if entity @e[tag=mie_ray_target,type=#uin:tech/ages,scores={mie_temp1=..-1}] run function miecraft:app/pots/orange/grow
execute if entity @e[tag=mie_ray_target,type=zombie] run function miecraft:app/pots/orange/grow

# 删除查找实体的tag
function miecraft:ray_cast/entity/delete_tag