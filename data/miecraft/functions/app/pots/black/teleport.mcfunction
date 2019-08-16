# 计算能量
function miecraft:sheep_energy/item_to_score
# 若射线终点是空气且能量够就放置
execute store result score @s mie_black_x run data get entity @s SelectedItem.tag.mie_data3.X 1
execute store result score @s mie_black_y run data get entity @s SelectedItem.tag.mie_data3.Y 1
execute store result score @s mie_black_z run data get entity @s SelectedItem.tag.mie_data3.Z 1

execute if score @s mie_eg_black matches 50.. at @s run scoreboard players set @s mie_helix_black 1

# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_black 50
function miecraft:sheep_energy/score_to_item/remove