commands = '''
execute store result score @s mie_temp2 run data get entity @s Inventory[{{Slot:{0:d}b}}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{{Slot:{0:d}b}}].tag.mie_data2
execute if entity @s[nbt={{Inventory:[{{Slot:{0:d}b,tag:{{mie_id:"pot"}}}}]}}] run function miecraft:sheep_energy/item_to_score/add
'''

output=''

for i in range(36):
    output+=commands.format(i)

print(output)