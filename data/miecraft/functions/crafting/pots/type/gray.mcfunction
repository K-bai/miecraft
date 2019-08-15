execute if score @s mie_eg_white matches 100.. run summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["mie_pot_craft_effect_gray","mie_pot_craft_effect"],Duration:999}
execute if score @s mie_eg_white matches 100.. run tag @s add mie_frame_destroy
execute unless score @s mie_eg_white matches 100.. run tag @s add mie_frame_core_destroy
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_white 100
function miecraft:sheep_energy/score_to_item/remove
