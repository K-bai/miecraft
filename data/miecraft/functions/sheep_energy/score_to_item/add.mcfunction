# 标记自己
tag @s add mie_eg_player_temp
# 穷举玩家背包 先主手，再副手
execute store result score @s mie_temp1 run data get entity @s SelectedItem.tag.mie_id
execute store result score @s mie_temp2 run data get entity @s SelectedItem.tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s SelectedItem.tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s SelectedItem.tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s SelectedItem.tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:-106b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:-106b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:-106b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:-106b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:-106b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:-106b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

# 其余空位
execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:0b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:0b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:0b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:0b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:0b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:0b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:1b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:1b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:1b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:1b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:1b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:1b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:2b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:2b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:2b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:2b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:2b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:2b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:3b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:3b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:3b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:3b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:3b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:3b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:4b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:4b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:4b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:4b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:4b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:4b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:5b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:5b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:5b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:5b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:5b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:5b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:6b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:6b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:6b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:6b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:6b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:6b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:7b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:7b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:7b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:7b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:7b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:7b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:8b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:8b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:8b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:8b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:8b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:8b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:9b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:9b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:9b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:9b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:9b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:9b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:10b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:10b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:10b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:10b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:10b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:10b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:11b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:11b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:11b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:11b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:11b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:11b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:12b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:12b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:12b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:12b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:12b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:12b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:13b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:13b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:13b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:13b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:13b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:13b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:14b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:14b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:14b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:14b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:14b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:14b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:15b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:15b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:15b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:15b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:15b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:15b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:16b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:16b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:16b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:16b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:16b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:16b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:17b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:17b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:17b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:17b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:17b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:17b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:18b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:18b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:18b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:18b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:18b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:18b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:19b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:19b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:19b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:19b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:19b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:19b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:20b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:20b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:20b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:20b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:20b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:20b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:21b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:21b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:21b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:21b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:21b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:21b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:22b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:22b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:22b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:22b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:22b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:22b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:23b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:23b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:23b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:23b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:23b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:23b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:24b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:24b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:24b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:24b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:24b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:24b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:25b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:25b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:25b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:25b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:25b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:25b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:26b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:26b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:26b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:26b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:26b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:26b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:27b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:27b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:27b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:27b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:27b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:27b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:28b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:28b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:28b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:28b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:28b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:28b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:29b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:29b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:29b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:29b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:29b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:29b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:30b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:30b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:30b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:30b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:30b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:30b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:31b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:31b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:31b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:31b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:31b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:31b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:32b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:32b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:32b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:32b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:32b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:32b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:33b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:33b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:33b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:33b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:33b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:33b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:34b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:34b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:34b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:34b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:34b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:34b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:35b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:35b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:35b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/add/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:35b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:35b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:35b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

# 最后发现剩余放不下 溢出
execute if score @s mie_eg_white matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.white"},{"score":{"name":"*","objective":"mie_eg_white"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_orange matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.orange"},{"score":{"name":"*","objective":"mie_eg_orange"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_magenta matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.magenta"},{"score":{"name":"*","objective":"mie_eg_magenta"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_l_blue matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.light_blue"},{"score":{"name":"*","objective":"mie_eg_l_blue"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_yellow matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.yellow"},{"score":{"name":"*","objective":"mie_eg_yellow"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_lime matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.lime"},{"score":{"name":"*","objective":"mie_eg_lime"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_pink matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.pink"},{"score":{"name":"*","objective":"mie_eg_pink"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_gray matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.gray"},{"score":{"name":"*","objective":"mie_eg_gray"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_l_gray matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.light_gray"},{"score":{"name":"*","objective":"mie_eg_l_gray"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_cyan matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.cyan"},{"score":{"name":"*","objective":"mie_eg_cyan"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_purple matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.purple"},{"score":{"name":"*","objective":"mie_eg_purple"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_blue matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.blue"},{"score":{"name":"*","objective":"mie_eg_blue"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_brown matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.brown"},{"score":{"name":"*","objective":"mie_eg_brown"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_green matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.green"},{"score":{"name":"*","objective":"mie_eg_green"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_red matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.red"},{"score":{"name":"*","objective":"mie_eg_red"}},{"translate":"info.mie.pot.add_energy.suf"}]
execute if score @s mie_eg_black matches 1.. run tellraw @s [{"translate":"info.mie.pot.add_energy.black"},{"score":{"name":"*","objective":"mie_eg_black"}},{"translate":"info.mie.pot.add_energy.suf"}]






execute if score @s mie_eg_white matches 1.. at @s run particle minecraft:dust 1 1 1 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_orange matches 1.. at @s run particle minecraft:dust 0.941 0.463 0.075 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_magenta matches 1.. at @s run particle minecraft:dust 0.741 0.267 0.702 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_l_blue matches 1.. at @s run particle minecraft:dust 0.227 0.686 0.851 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_yellow matches 1.. at @s run particle minecraft:dust 0.973 0.776 0.153 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_lime matches 1.. at @s run particle minecraft:dust 0.439 0.725 0.098 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_pink matches 1.. at @s run particle minecraft:dust 0.929 0.553 0.675 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_gray matches 1.. at @s run particle minecraft:dust 0.243 0.267 0.278 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_l_gray matches 1.. at @s run particle minecraft:dust 0.557 0.557 0.525 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_cyan matches 1.. at @s run particle minecraft:dust 0.082 0.537 0.569 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_purple matches 1.. at @s run particle minecraft:dust 0.475 0.165 0.675 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_blue matches 1.. at @s run particle minecraft:dust 0.208 0.224 0.616 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_brown matches 1.. at @s run particle minecraft:dust 0.447 0.278 0.157 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_green matches 1.. at @s run particle minecraft:dust 0.329 0.427 0.106 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_red matches 1.. at @s run particle minecraft:dust 0.631 0.153 0.133 2 ~ ~.5 ~ .5 .5 .5 1 100
execute if score @s mie_eg_black matches 1.. at @s run particle minecraft:dust 0.078 0.082 0.098 2 ~ ~.5 ~ .5 .5 .5 1 100



# 删除标记
tag @s remove mie_eg_player_temp
