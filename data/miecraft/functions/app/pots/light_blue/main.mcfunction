# 射线触碰羊羊切换颜色
function miecraft:ray_cast/entity/main
execute if entity @e[tag=mie_ray_target,type=sheep] run function miecraft:app/pots/light_blue/change_sheep
execute if entity @e[tag=mie_ray_target,type=wolf] run function miecraft:app/pots/light_blue/change_wolf
execute if entity @e[tag=mie_ray_target,type=cat] run function miecraft:app/pots/light_blue/change_wolf

# 加入判定是否碰方块tag
tag @s add mie_light_blue_change
# 射线没碰到羊羊 就看碰没碰到方块
execute unless entity @e[tag=mie_ray_target,type=#miecraft:can_change_color] run function miecraft:ray_cast/block/main
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ #miecraft:can_change_color run function miecraft:app/pots/light_blue/change_block
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ #miecraft:can_change_color run tag @s remove mie_light_blue_change

# 射线没碰到羊羊 还没碰到方块 就切换颜色
execute unless entity @e[tag=mie_ray_target,type=#miecraft:can_change_color] if entity @s[tag=mie_light_blue_change] at @s run function miecraft:app/pots/light_blue/switch_color


# 删除自身tag
tag @s remove mie_light_blue_change
# 删除找方块实体
kill @e[tag=mie_ray_mark]
# 删除查找实体的tag
function miecraft:ray_cast/entity/delete_tag