# 检测前方是否是大羊
function miecraft:ray_cast/entity/main
execute as @e[tag=mie_ray_target,type=#miecraft:can_grow] store result score @s mie_temp1 run data get entity @s Age 
# 判断羊羊是否被剃毛
tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Sheared:0b}] add mie_sheared_sheep

# 计算能量
function miecraft:sheep_energy/item_to_score

# 剃羊毛
execute if score @s mie_eg_white matches 5.. if entity @e[type=sheep,tag=mie_sheared_sheep] run function miecraft:app/shears/shear

# 消耗能量
execute if entity @e[type=sheep,tag=mie_sheared_sheep] run function miecraft:sheep_energy/reset_score
execute if entity @e[type=sheep,tag=mie_sheared_sheep] run scoreboard players set @s mie_eg_white 10
execute if entity @e[type=sheep,tag=mie_sheared_sheep] run function miecraft:sheep_energy/score_to_item/remove

# 删除查找实体的tag
tag @e[tag=mie_sheared_sheep] remove mie_sheared_sheep
function miecraft:ray_cast/entity/delete_tag