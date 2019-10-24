# 检测前方是否是大羊
function miecraft:ray_cast/entity/main
execute as @e[tag=mie_ray_target,type=#uin:tech/ages] store result score @s mie_temp1 run data get entity @s Age 
# 判断对应颜色
execute as @s[nbt={SelectedItem:{tag:{mie_data1:0}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:0b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:1}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:1b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:2}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:2b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:3}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:3b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:4}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:4b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:5}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:5b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:6}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:6b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:7}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:7b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:8}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:8b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:9}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:9b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:10}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:10b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:11}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:11b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:12}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:12b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:13}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:13b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:14}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:14b}] add mie_ready_to_ab_new
execute as @s[nbt={SelectedItem:{tag:{mie_data1:15}}}] run tag @e[tag=mie_ray_target,type=sheep,scores={mie_temp1=0..},nbt={Color:15b}] add mie_ready_to_ab_new

# 加上吸它的玩家id
scoreboard players set @e[tag=mie_ready_to_ab_new] mie_pot_ab_t 1
execute store result score @e[tag=mie_ready_to_ab_new,limit=1] mie_id run scoreboard players get @s mie_id
# 玩家自己加找到的tag
execute if entity @e[tag=mie_ready_to_ab_new] run tag @s add mie_ab_player

# 音效
execute if entity @e[tag=mie_ready_to_ab_new] at @s run playsound minecraft:block.lava.pop ambient @a ~ ~ ~ 1 1



# 删除查找实体的tag
tag @e[tag=mie_ready_to_ab_new] remove mie_ready_to_ab_new
function miecraft:ray_cast/entity/delete_tag