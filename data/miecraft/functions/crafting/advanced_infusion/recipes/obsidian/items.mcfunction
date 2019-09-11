# 保存每个锁定物品的数量
execute as @e[type=item,tag=mie_item_temp] store result score @s mie_temp1 run data get entity @s Item.Count

# 确定所有物品数量 (2 3交替)
scoreboard players set @s mie_temp3 0
execute if score @s mie_temp2 matches 0 run scoreboard players operation @s mie_temp3 += @e[type=item,tag=mie_item_temp,nbt={Item:{id:"minecraft:stone"}}] mie_temp1

scoreboard players set @s mie_temp2 0
execute if score @s mie_temp3 matches 10 run scoreboard players operation @s mie_temp2 += @e[type=item,tag=mie_item_temp,nbt={Item:{id:"minecraft:dirt"}}] mie_temp1


execute if score @s mie_temp2 matches 10 run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
