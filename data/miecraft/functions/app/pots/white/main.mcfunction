# 检测前方是否是羊
function miecraft:ray_cast/entity/main
scoreboard players add @e[scores={mie_ray_type=1..}] mie_pot_ab_t 0
tag @e[type=sheep,scores={mie_ray_type=1,mie_pot_ab_t=0},nbt={Color:0b}] add mie_ready_to_ab_new
# 加上吸它的玩家id
scoreboard players set @e[tag=mie_ready_to_ab_new] mie_pot_ab_t 1
execute store result score @e[tag=mie_ready_to_ab_new,limit=1] mie_id run scoreboard players get @s mie_id


# 删除查找实体的tag
tag @e[tag=mie_ready_to_ab_new] remove mie_ready_to_ab_new
function miecraft:ray_cast/entity/delete_tag