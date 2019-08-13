# 音效
playsound minecraft:entity.slime.squish ambient @a ~ ~ ~ 1 1.5
# 粒子
particle minecraft:block light_blue_wool ~ ~.7 ~ .2 .2 .2 1 100

# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_l_blue 1
function miecraft:sheep_energy/score_to_item/remove