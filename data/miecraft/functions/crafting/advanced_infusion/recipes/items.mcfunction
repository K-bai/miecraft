# 初始化
scoreboard players set @s mie_temp1 0
scoreboard players set @s mie_temp2 0
scoreboard players set @s mie_temp3 0
execute at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_ainf_other_locked,dx=5,dy=1,dz=5] add mie_item_temp
# 物品判定
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_bone_meal"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_tropical_fish"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_chorus_fruit"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_ice"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_gold_nugget"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_sugar_cane"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_beetroot"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_gunpowder"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_iron_nugget"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_prismarine_shard"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_obsidian"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_lapis_lazuli"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_bricks"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_oak_wood"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_redstone"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{tag:{mie_id:"magic_ender_pearl"}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{id:"minecraft:glass_bottle"}}] run function miecraft:crafting/advanced_infusion/recipes/item_energy_buffer/items
execute if entity @s[nbt={Item:{tag:{mie_id:"item_energy_buffer"}}}] run function miecraft:crafting/advanced_infusion/recipes/advanced_item_energy_buffer/items
execute if entity @s[nbt={Item:{id:"minecraft:comparator"}}] run function miecraft:crafting/advanced_infusion/recipes/item_energy_controller/items
execute if entity @s[nbt={Item:{tag:{mie_id:"item_energy_controller"}}}] run function miecraft:crafting/advanced_infusion/recipes/advanced_item_energy_controller/items
execute if entity @s[nbt={Item:{id:"minecraft:glass"}}] run function miecraft:crafting/advanced_infusion/recipes/micro_lens/items
execute if entity @s[nbt={Item:{id:"minecraft:dispenser"}}] run function miecraft:crafting/advanced_infusion/recipes/micro_field_generator/items
execute if entity @s[nbt={Item:{id:"minecraft:shears"}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
execute if entity @s[nbt={Item:{id:"minecraft:golden_sword"}}] run function miecraft:crafting/advanced_infusion/recipes/golden_magic_sword/items
execute if entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run function miecraft:crafting/advanced_infusion/recipes/diamond_magic_sword/items
execute if entity @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] run function miecraft:crafting/advanced_infusion/recipes/sheep_helmet/items
execute if entity @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] run function miecraft:crafting/advanced_infusion/recipes/sheep_chestplate/items
execute if entity @s[nbt={Item:{id:"minecraft:diamond_leggings"}}] run function miecraft:crafting/advanced_infusion/recipes/sheep_leggings/items
execute if entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] run function miecraft:crafting/advanced_infusion/recipes/sheep_boots/items

# 清除
tag @s remove mie_item_temp
