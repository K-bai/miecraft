# 剃羊毛
data merge entity @e[type=sheep,tag=mie_sheared_sheep,limit=1] {Sheared:1}
# 减耐久
execute store result score @s mie_temp1 run data get entity @s SelectedItem.tag.Damage
scoreboard players add @s mie_temp1 1
execute store result entity @s SelectedItem.tag.Damage short 1 run scoreboard players get @s mie_temp1
# 删物品
execute if score @s mie_temp1 matches 26.. run replaceitem entity @s weapon.mainhand minecraft:air

# 生成物品
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:0b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/white
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:1b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/orange
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:2b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/magenta
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:3b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/light_blue
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:4b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/yellow
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:5b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/lime
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:6b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/pink
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:7b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/gray
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:8b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/light_gray
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:9b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/cyan
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:10b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/purple
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:11b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/blue
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:12b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/brown
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:13b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/green
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:14b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/red
execute as @e[type=sheep,tag=mie_sheared_sheep,nbt={Color:15b}] at @s run loot spawn ~ ~.7 ~ loot miecraft:sheep_wool/black