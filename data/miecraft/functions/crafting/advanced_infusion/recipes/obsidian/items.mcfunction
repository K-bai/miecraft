execute store result score @s mie_temp1 if entity @e[type=item,tag=mie_item_ainf_other_locked,nbt={Item:{id:"minecraft:stone"}}]
execute if score @s mie_temp1 matches 1 store result score @s mie_temp1 if entity @e[type=item,tag=mie_item_ainf_other_locked,nbt={Item:{id:"minecraft:dirt"}}]
execute if score @s mie_temp1 matches 1 run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
