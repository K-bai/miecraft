execute if entity @s[nbt={Item:{id:"minecraft:stone"}}] at @s align xyz positioned ~-2 ~ ~-2 run function miecraft:crafting/advanced_infusion/recipes/obsidian/items

execute if entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1