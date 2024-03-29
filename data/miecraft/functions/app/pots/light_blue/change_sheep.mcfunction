# 计算能量
function miecraft:sheep_energy/item_to_score
# 音效
execute if score @s mie_eg_l_blue matches 1.. at @e[tag=mie_ray_target,limit=1] run playsound minecraft:entity.slime.squish ambient @a ~ ~ ~ 1 1.5
# 粒子
execute if score @s mie_eg_l_blue matches 1.. at @e[tag=mie_ray_target,limit=1] run particle minecraft:block light_blue_wool ~ ~.7 ~ .2 .2 .2 1 100
# 修改颜色
execute if score @s mie_eg_l_blue matches 1.. run data modify entity @e[tag=mie_ray_target,limit=1] Color set from entity @s SelectedItem.tag.mie_data3


# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_l_blue 1
function miecraft:sheep_energy/score_to_item/remove
