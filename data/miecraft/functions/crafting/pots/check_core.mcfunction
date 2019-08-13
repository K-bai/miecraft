# 计算能量
function miecraft:sheep_energy/item_to_score

execute if block ~ ~-1 ~ white_wool if block ~ ~-2 ~ bone_block run summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["mie_pot_craft_effect_white","mie_pot_craft_effect"],Duration:999}
execute if block ~ ~-1 ~ white_wool if block ~ ~-2 ~ bone_block run tag @s add mie_frame_destroy

execute if block ~ ~-1 ~ light_blue_wool if block ~ ~-2 ~ lapis_block if score @s mie_eg_white matches 50.. run summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["mie_pot_craft_effect_light_blue","mie_pot_craft_effect"],Duration:999}
execute if block ~ ~-1 ~ light_blue_wool if block ~ ~-2 ~ lapis_block if score @s mie_eg_white matches 50.. run tag @s add mie_frame_destroy
execute if block ~ ~-1 ~ light_blue_wool if block ~ ~-2 ~ lapis_block unless score @s mie_eg_white matches 50.. run tag @s add mie_frame_core_destroy
execute if block ~ ~-1 ~ light_blue_wool if block ~ ~-2 ~ lapis_block run function miecraft:sheep_energy/reset_score
execute if block ~ ~-1 ~ light_blue_wool if block ~ ~-2 ~ lapis_block run scoreboard players set @s mie_eg_white 50
execute if block ~ ~-1 ~ light_blue_wool if block ~ ~-2 ~ lapis_block run function miecraft:sheep_energy/score_to_item/remove

execute if block ~ ~-1 ~ blue_wool if block ~ ~-2 ~ cauldron[level=3] if score @s mie_eg_white matches 50.. run summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["mie_pot_craft_effect_blue","mie_pot_craft_effect"],Duration:999}
execute if block ~ ~-1 ~ blue_wool if block ~ ~-2 ~ cauldron[level=3] if score @s mie_eg_white matches 50.. run tag @s add mie_frame_destroy
execute if block ~ ~-1 ~ blue_wool if block ~ ~-2 ~ cauldron[level=3] unless score @s mie_eg_white matches 50.. run tag @s add mie_frame_core_destroy
execute if block ~ ~-1 ~ blue_wool if block ~ ~-2 ~ cauldron[level=3] run function miecraft:sheep_energy/reset_score
execute if block ~ ~-1 ~ blue_wool if block ~ ~-2 ~ cauldron[level=3] run scoreboard players set @s mie_eg_white 50
execute if block ~ ~-1 ~ blue_wool if block ~ ~-2 ~ cauldron[level=3] run function miecraft:sheep_energy/score_to_item/remove