commands = '''
execute store result score @s mie_temp1 run data get entity @s Inventory[{{Slot:{0:d}b}}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{{Slot:{0:d}b}}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{{Slot:{0:d}b}}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{{Slot:{0:d}b}}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{{Slot:{0:d}b}}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{{Slot:{0:d}b}}].tag.display.Lore[-1] set from block ~ 255 ~ Text1
execute if score @s mie_temp1 matches 3 run setblock ~ 255 ~ air replace
'''

output=''

for i in range(36):
    output+=commands.format(i)

print(output)