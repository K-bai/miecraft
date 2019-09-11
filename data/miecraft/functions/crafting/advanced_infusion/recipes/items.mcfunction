# 初始化
scoreboard players set @s mie_temp1 0
scoreboard players set @s mie_temp2 0
scoreboard players set @s mie_temp3 0
execute at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_ainf_other_locked,dx=5,dy=1,dz=5] add mie_item_temp

# 检测物品-有物品
execute if entity @s[nbt={Item:{id:"minecraft:stone"}}] run function miecraft:crafting/advanced_infusion/recipes/obsidian/items

# 检测物品-无物品
execute if entity @s[nbt={Item:{id:"minecraft:shears"}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1

# 清除
tag @s remove mie_item_temp
