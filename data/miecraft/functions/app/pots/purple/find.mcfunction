# 计算能量
function miecraft:sheep_energy/item_to_score
# 有则生成mark
execute if score @s mie_eg_purple matches 50.. align xyz run summon area_effect_cloud ~.5 ~.5 ~.5 {Tags:["mie_purple_copy","mie_purple_copy_new"],Duration:999}
scoreboard players set @e[tag=mie_purple_copy_new] mie_helix_purple 1
execute store result score @e[tag=mie_purple_copy_new,limit=1] mie_id run scoreboard players get @s mie_id
tag @e[tag=mie_purple_copy_new] remove mie_purple_copy_new

# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_purple 50
function miecraft:sheep_energy/score_to_item/remove
