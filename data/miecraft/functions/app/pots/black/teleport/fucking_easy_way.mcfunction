# 生成marker
summon area_effect_cloud ~ ~ ~ {Tags:["mie_black_temp_tp"]}
# 保存位置
execute store result score @s mie_black_x run data get entity @s SelectedItem.tag.mie_data3.X 1
execute store result score @s mie_black_y run data get entity @s SelectedItem.tag.mie_data3.Y 1
execute store result score @s mie_black_z run data get entity @s SelectedItem.tag.mie_data3.Z 1
# 标记自己
tag @s add mie_player_black_tp
# 执行传送
execute as @e[tag=mie_black_temp_tp] run function miecraft:app/pots/black/teleport/fucking_easy_way_fuck

# 清除标记
tag @s remove mie_player_black_tp
