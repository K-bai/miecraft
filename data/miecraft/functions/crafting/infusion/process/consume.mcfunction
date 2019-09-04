# 保存魔法罐能量，若为0则去掉tag
execute store result score @s mie_temp1 run data get entity @s Item.tag.mie_data2
execute if score @s mie_temp1 matches 0 run tag @s remove mie_item_temp
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute store result entity @s Item.tag.mie_data2 int 1 run scoreboard players get @s mie_temp1



# 修改Lore显示 2->类别 3->能量
execute store result score @s mie_temp2 run data get entity @s Item.tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Item.tag.mie_data2
# 修改实体
summon minecraft:armor_stand ~ 255 ~ {NoGravity:1,Invulnerable:1,Invisible:1,Tags:["mie_as_lore_temp"]}
loot replace entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp] weapon.mainhand loot miecraft:change_text/pot_energy_lore
# 复制nbt
data modify entity @s Item.tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
# 删除实体
kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp]

# 修改Damage
execute if score @s mie_temp1 matches 0 run data modify entity @s Item.tag.Damage set value 25
execute if score @s mie_temp1 matches 1..6 run data modify entity @s Item.tag.Damage set value 18
execute if score @s mie_temp1 matches 7..12 run data modify entity @s Item.tag.Damage set value 15
execute if score @s mie_temp1 matches 13..18 run data modify entity @s Item.tag.Damage set value 13
execute if score @s mie_temp1 matches 19..25 run data modify entity @s Item.tag.Damage set value 10
execute if score @s mie_temp1 matches 26..31 run data modify entity @s Item.tag.Damage set value 8
execute if score @s mie_temp1 matches 32..37 run data modify entity @s Item.tag.Damage set value 6
execute if score @s mie_temp1 matches 38..43 run data modify entity @s Item.tag.Damage set value 3
execute if score @s mie_temp1 matches 44.. run data modify entity @s Item.tag.Damage set value 0

execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 0 run data modify entity @s Item.tag.Damage set value 25
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 1..12 run data modify entity @s Item.tag.Damage set value 18
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 13..25 run data modify entity @s Item.tag.Damage set value 15
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 26..37 run data modify entity @s Item.tag.Damage set value 13
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 38..50 run data modify entity @s Item.tag.Damage set value 10
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 51..62 run data modify entity @s Item.tag.Damage set value 8
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 63..75 run data modify entity @s Item.tag.Damage set value 6
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 76..87 run data modify entity @s Item.tag.Damage set value 3
execute if entity @s[nbt={Item:{tag:{mie_data1:0}}}] if score @s mie_temp1 matches 88.. run data modify entity @s Item.tag.Damage set value 0

execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 0 run data modify entity @s Item.tag.Damage set value 25
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 1..12 run data modify entity @s Item.tag.Damage set value 18
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 13..25 run data modify entity @s Item.tag.Damage set value 15
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 26..37 run data modify entity @s Item.tag.Damage set value 13
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 38..50 run data modify entity @s Item.tag.Damage set value 10
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 51..62 run data modify entity @s Item.tag.Damage set value 8
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 63..75 run data modify entity @s Item.tag.Damage set value 6
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 76..87 run data modify entity @s Item.tag.Damage set value 3
execute if entity @s[nbt={Item:{tag:{mie_data1:8}}}] if score @s mie_temp1 matches 88.. run data modify entity @s Item.tag.Damage set value 0
