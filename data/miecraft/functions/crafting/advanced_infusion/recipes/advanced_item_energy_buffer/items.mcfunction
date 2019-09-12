
# 保存每个锁定物品的数量
execute as @e[type=item,tag=mie_item_temp] store result score @s mie_temp1 run data get entity @s Item.Count

# 初始化
scoreboard players set @s mie_temp3 0
# 确定所有物品数量 (2用于判断是否满足，3用来判断总类型数量)

scoreboard players set @s mie_temp2 0
scoreboard players operation @s mie_temp2 += @e[type=item,tag=mie_item_temp,nbt={Item:{tag:{mie_id:"heavy_shell"}}}] mie_temp1
execute if score @s mie_temp2 matches 2 run scoreboard players add @s mie_temp3 1


scoreboard players set @s mie_temp2 0
scoreboard players operation @s mie_temp2 += @e[type=item,tag=mie_item_temp,nbt={Item:{tag:{mie_id:"glue"}}}] mie_temp1
execute if score @s mie_temp2 matches 2 run scoreboard players add @s mie_temp3 1


scoreboard players set @s mie_temp2 0
scoreboard players operation @s mie_temp2 += @e[type=item,tag=mie_item_temp,nbt={Item:{tag:{mie_id:"red_energy_block"}}}] mie_temp1
execute if score @s mie_temp2 matches 3 run scoreboard players add @s mie_temp3 1


scoreboard players set @s mie_temp2 0
scoreboard players operation @s mie_temp2 += @e[type=item,tag=mie_item_temp,nbt={Item:{tag:{mie_id:"yellow_energy_block"}}}] mie_temp1
execute if score @s mie_temp2 matches 3 run scoreboard players add @s mie_temp3 1


scoreboard players set @s mie_temp2 0
scoreboard players operation @s mie_temp2 += @e[type=item,tag=mie_item_temp,nbt={Item:{tag:{mie_id:"blue_energy_block"}}}] mie_temp1
execute if score @s mie_temp2 matches 3 run scoreboard players add @s mie_temp3 1


# 判断总数
execute if score @s mie_temp3 matches 5 run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
